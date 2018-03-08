class Article < ApplicationRecord
  belongs_to :user
  scope :published, -> {where.not(published_at: nil)}
end
