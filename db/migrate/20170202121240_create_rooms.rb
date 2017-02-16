class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.text          :title
      t.integer       :capacity
      t.string        :area
      t.string        :space_type
      t.text          :about_space
      t.text          :about_amenities
      t.text          :about_eating
      t.text          :about_cleaning
      t.integer       :square
      t.string        :start_time
      t.string        :end_time
      t.string        :fil
      t.integer       :space_id
      t.timestamps
    end
  end
end
