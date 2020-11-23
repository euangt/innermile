class User < ApplicationRecord
  has_many :bookmarks
  has_many :businesses

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
