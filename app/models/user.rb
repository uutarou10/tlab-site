class User < ApplicationRecord
  add_column :users, :password_digest, :string
  has_many :articles
end
