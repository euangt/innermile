class Business < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookmarks, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :messages, as: :commentable


  validates :name, presence: true
  validates :address, presence: true
  validates :short_bio, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :avatar
  has_one_attached :banner_photo
  has_one_attached :owner_photo
  has_many_attached :business_photos
end
