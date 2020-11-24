class Post < ApplicationRecord
  belongs_to :business

  validates :content, presence: true, length: { minimum: 15 }
end
