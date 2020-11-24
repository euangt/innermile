class Business < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookmarks, dependent: :destroy
  has_many :posts, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :short_bio, presence: true
end
