class Conversation < ApplicationRecord
  belongs_to :user
  belongs_to :business

  has_many :messages
  has_many :businesses, through: :messages
end
