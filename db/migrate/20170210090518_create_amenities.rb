class CreateAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :amenities do |t|
      t.string  :facility
      t.string  :facility_eng
    end
  end
end
