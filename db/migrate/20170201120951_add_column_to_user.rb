class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :family_name, :string
    add_column :users, :given_name, :string
    add_column :users, :avator, :string
    add_column :users, :agreement, :boolean
  end
end
