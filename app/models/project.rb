class Project < ApplicationRecord
  has_many :project_articles, dependent: :destroy
  validates :feed_url, format: /\A#{URI::regexp(%w(http https))}\z/
  validates :url, format: /\A#{URI::regexp(%w(http https))}\z/
  scope :select_attr, -> {select(:id, :title, :description, :feed_url, :url, :site_title, :abbreviation)}
end
