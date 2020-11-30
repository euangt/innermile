class Event < ApplicationRecord
  belongs_to :business

  validates :date, presence: true
  validates :address, presence: true
  validates :time, presence: true 
  validates :event_name, presence: true
end
