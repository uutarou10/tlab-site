class Project < ApplicationRecord
  validates :feed_url, format: /\A#{URI::regexp(%w(http https))}\z/
  validates :url, format: /\A#{URI::regexp(%w(http https))}\z/
end
