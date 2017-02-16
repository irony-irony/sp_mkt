class RoomEventType < ApplicationRecord
  belongs_to :room
  belongs_to :event_type
end
