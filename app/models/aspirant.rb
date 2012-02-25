class Aspirant < ActiveRecord::Base
  belongs_to :person
  belongs_to :scientman
  belongs_to :speciality
  has_many :marks
  has_many :skippings
  
  validates :aspirant_type,:presence=>true
  validates :start_study_date,:presence=>true
  validates :maybe_finish_date,:presence=>true
  
  #validates :scientman_id,:presence => true,:uniqueness => true
  
  accepts_nested_attributes_for :skippings, :allow_destroy => true
  
  before_save { 
    self.skip = skippings.inject(0) { |total, s| total + (s.finish - s.start) }
    self.maybe_finish_date = self.start_study_date + 3.years + self.skip.days
  }
  
  Type_asp=["Аспирант","Докторант","Соискатель"]
  Forma=["Очная, коммерческая","Очная, бюджетная","Заочная, коммерческое"]
  
  def asptype
	Type_asp[aspirant_type]
  end
  
  def studyform
    Forma[study_form]
  end
    
end
