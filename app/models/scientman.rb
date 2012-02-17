class Scientman < ActiveRecord::Base
  belongs_to :chair
  has_one :person
  has_many :aspirants
  
  
  
end
