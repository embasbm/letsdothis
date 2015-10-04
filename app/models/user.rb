class User < ActiveRecord::Base
  validates :login, presence: true
  validates_uniqueness_of :email

  has_many :tasks



  has_secure_password
end
