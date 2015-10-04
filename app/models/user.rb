class User < ActiveRecord::Base
  validates :login, presence: true
  validates_uniqueness_of :email
  validates :password, presence: true, length: { minimum: 6 }

  has_many :tasks



  has_secure_password
end
