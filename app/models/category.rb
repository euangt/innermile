class Category < ApplicationRecord
  has_many :businesses, dependent: :destroy
end
