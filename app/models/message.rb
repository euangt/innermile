class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :commentable, polymorphic: true
end
