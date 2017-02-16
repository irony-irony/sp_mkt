class CreateRoomEventTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :room_event_types do |t|

      t.timestamps
    end
  end
end
