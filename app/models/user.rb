class User < ActiveRecord::Base
  attr_accessor :remember_token, :current_balance, :charge_list, :has_paid
  before_save {self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
                    format: {with: VALID_EMAIL_REGEX}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

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

  def charges
    if charge_list.nil?
      current_time = Time.now.inspect
      self.charge_list = [ {item: "Delegation Fee--Early",
                            price: 95,
                            quantity: 1,
                            date: current_time},
                            {item: "Delegate Fee--Early",
                            price: 85,
                            quantity: delegates_count,
                            date: current_time}
      ]
    else
      charge_list
    end
  end

  def get_current_balance
    init_balance
    #current_balance.nil? ? 0 : current_balance
    current_balance
  end

  def set_current_balance(amount)
    self.current_balance = amount
  end

  def append_charge(charge)
  #  self.charge_list.push(charge)
    charges = charge_list.push(charge)
    self.update_attribute(:charge_list, charges)
  end
end
