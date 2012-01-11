class Chair < ActiveRecord::Base
  has_many :specialities
  has_many :scientmans
end
