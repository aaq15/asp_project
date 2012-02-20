class Scientman < ActiveRecord::Base
  belongs_to :chair
  belongs_to :person
  has_many :aspirants
  
  def FIO
	second_name+" "+first_name+" "+last_name
  end
  
end
