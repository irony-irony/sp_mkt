class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :family_name, :string
    add_column :users, :first_name, :string
    add_column :users, :avator, :string
  end
end
