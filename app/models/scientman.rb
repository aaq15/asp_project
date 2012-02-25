class Scientman < ActiveRecord::Base
  belongs_to :chair
  belongs_to :person
  has_many :aspirants
  
  def FIO
	person.full_name
  end
  
end
