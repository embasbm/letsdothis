class User < ActiveRecord::Base
  validates :login, presence: true
  validates_uniqueness_of :email
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password

  has_many :tasks

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
