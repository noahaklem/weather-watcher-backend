class User < ApplicationRecord
  has_many :locations
  
  has_secure_password
  
  validates :username, uniqueness: true
  validates :username, :password, presence: true
end
