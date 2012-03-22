class Subject < ActiveRecord::Base
  has_and_belongs_to_many :specialities
  has_many :marks
  
  validates :name,:presence => true #, :uniqueness => true
  #validates :spec_id, :allow_nil  => true
  
end
