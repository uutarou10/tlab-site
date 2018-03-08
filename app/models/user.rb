class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true, format: {with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :display_name, uniqueness: true
end