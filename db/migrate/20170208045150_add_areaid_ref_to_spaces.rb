class AddAreaidRefToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_reference :spaces, :area, foreign_key: true
  end
end
