class Post < ApplicationRecord
  belongs_to :business

  validates :content, presence: true, lenght: { minimum: 15 }
end
