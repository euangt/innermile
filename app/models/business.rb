class Business < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookmarks

  validates :name, presence: true
  validates :address, presence: true
  validates :short_bio, presence: true
end
