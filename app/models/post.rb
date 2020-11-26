class Post < ApplicationRecord
  belongs_to :business

  validates :content, presence: true, length: { minimum: 15 }
  validates :post_image, presence: true

  has_one_attached :post_image
end
