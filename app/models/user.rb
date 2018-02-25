class User < ApplicationRecord
  add_column :users, :password_digest, :string
end
