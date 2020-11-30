class Event < ApplicationRecord
  belongs_to :business

  validates :date, presence: true
  validates :location, presence: true
  validates :time, presence: true 
  validates :event_name, presence: true
end
