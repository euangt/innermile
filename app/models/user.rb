class User < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :businesses, dependent: :destroy
  has_many :bookmarked_businesses, through: :bookmarks, source: :business
  has_many :conversations, dependent: :destroy
  has_many :messages, as: :commentable

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :address, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :avatar
end
