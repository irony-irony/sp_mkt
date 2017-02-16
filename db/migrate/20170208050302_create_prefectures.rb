class CreatePrefectures < ActiveRecord::Migration[5.0]
  def change
    create_table :prefectures do |t|
      t.string :prefecture
      t.string :prefecture_eng
    end
  end
end
