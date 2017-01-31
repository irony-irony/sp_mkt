class AddAgreementToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :agreement, :boolean
  end
end
