class Business < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookmarks
  has_many :posts

  validates :name, presence: true
  validates :address, presence: true
  validates :short_bio, presence: true
end
