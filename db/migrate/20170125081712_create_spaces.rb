class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string     :name
      t.text       :description
      t.text       :address
      t.string     :postal_dode
      t.text       :access
      t.timestamps
    end
  end
end
