class Post < ApplicationRecord
  belongs_to :business

  validates :content, presence: true, length: { minimum: 15 }

  has_one_attached :post_image
end
