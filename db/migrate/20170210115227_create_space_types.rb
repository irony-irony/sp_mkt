class CreateSpaceTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :space_types do |t|
      t.string :space_sort
      t.string :space_sort_eng
    end
  end
end
