class Event < ApplicationRecord
  belongs_to :business

  validates :date, presence: true
  validates :location, presence: true
  validates :time, presence: true 
  validates :event_name, presence: true

  has_one_attached :event_image
  has_rich_text :description

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
