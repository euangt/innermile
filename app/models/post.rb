class Post < ApplicationRecord
  belongs_to :business

  validates :content, presence: true, length: { minimum: 5 }

  has_one_attached :post_image
end
