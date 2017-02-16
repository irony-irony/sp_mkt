class CreateEventTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :event_types do |t|
      t.string :purpose
      t.string :purpose_eng
    end
  end
end
