class Room < ApplicationRecord
  belongs_to :space
  belongs_to :user
  belongs_to :space_type

  has_many :room_amenities
  has_many :amenities, through: :room_amenities
  has_many :room_event_types
  has_many :event_types, through: :room_event_types
end
