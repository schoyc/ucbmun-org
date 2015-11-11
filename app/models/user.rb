class User < ActiveRecord::Base
  acts_as_xlsx
  attr_accessor :remember_token
  before_save {self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
                    format: {with: VALID_EMAIL_REGEX}
  validates :delegates_count, presence: true
  validates :university, presence: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  def init_balance
    #current_balance.nil? ? self.current_balance = delegates_count * 85 + 90 : current_balance
    #TODO: If charges, change current_balance should be updated
    balance = 0
    charges
    if current_balance.nil?
      charge_list.each do |charge|
        balance += charge[:price] * charge[:quantity]
      end
      self.current_balance = balance
    end
  end

  def charge_list
    current_time = Time.now.inspect
    early_fee_time = Time.new(2015, 12, 2)
    default_charge_list = []
    if current_time.to_i < early_fee_time.to_i
      default_charge_list = [ {item: "Delegation Fee--Early",
                            price: 85.00,
                            quantity: 1,
                            date: current_time},
                            {item: "Delegate Fee--Early",
                            price: 85.00,
                            quantity: delegates_count,
                            date: current_time} ]
    else
      default_charge_list = [ {item: "Delegation Fee--Regular",
                            price: 95.00,
                            quantity: 1,
                            date: current_time},
                            {item: "Delegate Fee--Regular",
                            price: 95.00,
                            quantity: delegates_count,
                            date: current_time} ]
    end

    if delegate_discount.nil?
      default_charge_list.push({
        item: "Stripe Transaction Fee (2.9%)",
        price: calculate_stripe_fee(85 + 85*delegates_count),
        quantity: 1,
        date: current_time
        })
    else
      default_charge_list.push({
        item: "Delegate Fee Discount",
        price: (delegate_discount * -1).round(2),
        quantity: delegates_count,
        date: current_time
        })
      default_charge_list.push({
        item: "Stripe Transaction Fee (2.9%)",
        price: calculate_stripe_fee(85 + (85 - delegate_discount) * delegates_count),
        quantity: 1,
        date: current_time
        })
    end

      default_charge_list

  end

  def get_current_balance
    if current_balance.nil? or !delegate_discount.nil? or !delegation_discount.nil?
      calculate_balance.round(2)
    else
      current_balance.round(2)
    end
  end

  def set_current_balance(amount)
    update_attribute(:current_balance, amount)
  end

  def append_charge(charge)
  #  self.charge_list.push(charge)
    charges = charge_list.push(charge)
    self.update_attribute(:charge_list, charges)
  end

  def calculate_stripe_fee(balance)
    (0.029 / 0.971 * balance).round(2)
  end

  def calculate_balance
    current_time = Time.now.inspect
    early_fee_time = Time.new(2015, 12, 2)
    balance = 0.00
    if current_time.to_i < early_fee_time.to_i
      balance = 85 + 85*delegates_count
    else
      balance = 95 + 95*delegates_count
    end

    if !delegate_discount.nil?
      balance -= delegate_discount * delegates_count
    end

    if !delegation_discount.nil?
      balance -= delegation_discount
    end
    stripe_fee = calculate_stripe_fee(balance)
    balance += stripe_fee
    update_attribute(:current_balance, balance)
    balance
  end
end
