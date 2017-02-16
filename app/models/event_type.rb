class EventType < ApplicationRecord
  has_many :room_event_types
  has_many :rooms, through: :room_event_types
end
