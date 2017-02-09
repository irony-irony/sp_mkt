class RemoveColumnFromSpaces < ActiveRecord::Migration[5.0]
  def change
    remove_column :spaces, :address, :text
    remove_column :spaces, :postal_dode, :string
  end
end
