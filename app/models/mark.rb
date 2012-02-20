class Mark < ActiveRecord::Base
  belongs_to :aspirant
  belongs_to :subject
  
  validates :value,:presence => true
  validates :aspirant_id,:presence => true,:uniqueness => true
  validates :subject_id,:presence => true,:uniqueness => true
  
  def FIO
	@aspirant.second_name+" "+@aspirant.first_name+" "+@aspirant.last_name
  end
  
end
