class Chair < ActiveRecord::Base
  has_many :specialities
  has_many :scientmans
  
  validates :name,:presence => true,:uniqueness => true
  validates :number,:presence => true,:uniqueness => true
  
end
