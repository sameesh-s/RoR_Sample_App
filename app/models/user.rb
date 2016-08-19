class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name,
           presence: true,
           length: { minimum:5, maximum: 50 }
  validates :email,
           presence: true,
           length: { minimum:8, maximum: 255 },
           format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
           uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password,
           presence: true,
           length: { minimum: 6 },
           allow_nil: true
end