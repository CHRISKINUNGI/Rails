class User < ApplicationRecord
    has_secure_password
  
    validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@daystar\.ac\.ke\z/i }
    validates :password, presence: true, length: { minimum: 6 }
  
  end