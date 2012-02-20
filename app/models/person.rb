class Person < ActiveRecord::Base
  default_scope order(:second_name)
  has_one :aspirant
  has_one :scientman
  
  validates :first_name,:presence=>true,:length=>{:minimum => 3}
  validates :second_name,:presence=>true,:length=>{:minimum => 3}
  validates :last_name,:presence=>true,:length=>{:minimum => 3}
  
  STATUS = ["Неопределен", "Науч. руководитель", "Аспирант"]
  
  
  def full_name
    "#{second_name} #{first_name}  #{last_name}"
  end
     
  def FIO
	second_name+" "+first_name+" "+last_name
  end
  
  def get_status?
    STATUS[status]
  end
  
  def sex
    male ? 'мужской' : 'женский'
  end
  
  def aspirant?
    aspirant_id
  end
  
  def scientman?
    scientman_id
  end
end
