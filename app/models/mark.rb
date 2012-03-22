class Mark < ActiveRecord::Base
  #belongs_to :aspirant
  belongs_to :people
  belongs_to :subject
  
  validates :value,:presence => true
  validates :aspirant_id,:presence => true
  validates :subject_id,:presence => true
  
  validates :aspirant_id, :uniqueness =>{:scope => [:subject_id, :value_type, :day_exam],
			:message => "уже сдал этот экзамен"}
  
  VT=["","Вступительный экзамен","Кандидатский минимум"]
  
  def vt
	VT[value_type]
  end
  
  def FIO
	@aspirant.person.full_name
  end
  
end
