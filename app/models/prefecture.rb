class Prefecture < ApplicationRecord
  has_many :areas
  has_many :locations

  def to_param
    eng_name
  end
end
