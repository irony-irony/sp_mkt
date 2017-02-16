class Space < ApplicationRecord
  has_many :rooms
  belongs_to :user
  belongs_to :area
end
