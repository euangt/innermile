class Conversation < ApplicationRecord
  belongs_to :user
  belongs_to :business

  has_many :messages
end
