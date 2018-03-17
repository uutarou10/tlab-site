class User < ApplicationRecord
  has_secure_password
  has_many :articles, dependent: :destroy
  validates :email, uniqueness: true, format: {with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :display_name, uniqueness: true

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA256.hexdigest(token.to_s)
  end
end
