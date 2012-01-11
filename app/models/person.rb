class Person < ActiveRecord::Base
  has_one :aspirant
  has_one :scientman
  
  STATUS = ["Аспирант", "Науч. руководитель"]
  
  def get_status?
    STATUS[status]
  end
end
