class User < ActiveRecord::Base
  #acts_as_xlsx
  attr_accessor :remember_token, :activation_token, :reset_token
  before_save {self.email = email.downcase }
  before_create :create_activation_digest
  before_update :adjust_balance_if_needed
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

  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  def activate
    update_attribute(:activated,    true)
    update_attribute(:activated_at, Time.zone.now)
  end

  def send_activation_email
    UserMailer.account_activation(self).deliver_now
  end

  def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest, User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end

  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end

  def password_reset_expired?
    reset_sent_at < 2.hours.ago
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

  def initialize_balance
    update_attribute(:amount_paid, 0)
    adjust_balance()
  end

  def adjust_balance_if_needed
    delegates_changed = self.changed.include? "delegates_count"
    balance_not_adjusted = !(self.changed.include? "current_balance")

    if delegates_changed && balance_not_adjusted
       adjust_balance
    end
  end

  def adjust_balance

    current_time = Time.now.inspect
    early_fee_time = Time.new(2016, 12, 2)

    if current_time.to_i < early_fee_time.to_i
      balance = 85 + 85 * delegates_count
    else
      balance = 95 + 95 * delegates_count
    end

    balance -= amount_paid

    if !delegate_discount.nil?
      balance -= delegate_discount * delegates_count
    end

    if !delegation_discount.nil?
      balance -= delegation_discount
    end
    balance = calculate_balance_with_stripe_fee(balance)
    update_attribute(:current_balance, balance)
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

  def update_amount_paid(amount)
    update_attribute(:amount_paid, amount_paid + amount)
  end

  def update_balance(amount)
    update_amount_paid(amount)
    set_current_balance(current_balance - amount)
  end

  def get_current_balance
    if current_balance.nil? or !delegate_discount.nil? or !delegation_discount.nil?
      calculate_balance.round(2)
    else
      current_balance.round(2)
    end
    # calculate_balance.round(2)
  end

  def set_current_balance(amount)
    update_attribute(:current_balance, amount)
  end

  def append_charge(charge)
  #  self.charge_list.push(charge)
    charges = charge_list.push(charge)
    self.update_attribute(:charge_list, charges)
  end

  def calculate_balance_with_stripe_fee(balance)
    (balance / 0.97).round(2)
  end

  def calculate_stripe_fee(balance)
    (0.03 / 0.97 * balance).round(2)
  end

  def calculate_balance
    current_time = Time.now.inspect
    early_fee_time = Time.new(2015, 12, 2)
    balance = 95 + 95*delegates_count

    if !delegate_discount.nil?
      balance -= delegate_discount * delegates_count
    end

    if !delegation_discount.nil?
      balance -= delegation_discount
    end
    balance = calculate_balance_with_stripe_fee(balance)
    update_attribute(:current_balance, balance)
    balance
  end

  def set_balance(balance)
    update_attribute(:current_balance, balance)
  end

  def activation_digest=(digest)
    write_attribute(:activation_digest, digest)
  end

  private
    def create_activation_digest
      self.activation_token = User.new_token
      self.activation_digest = User.digest(activation_token)
    end

end
