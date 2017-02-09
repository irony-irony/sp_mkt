#coding: utf-8

require "csv"

Prefecture.delete_all

namelist = Array.new

CSV.foreach('db/prefectures_name_seed.csv') do |row|
  record = {:id => row[0].to_i, :prefecture_name => row[1]}
  p record
  prefecture_name = Prefecture.create!(record)
  namelist[prefecture_name.id] = prefecture_name
end


Area.delete_all
CSV.foreach('db/postal_code_seed.csv') do |row|
  record = {
    :postal_code =>  row[0],
    :prefecture =>   namelist[row[1].to_i],
    :city       =>       row[3],
    :street     =>       row[4]
  }
  p record
  Area.create!(record)
end
