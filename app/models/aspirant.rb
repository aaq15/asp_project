class Aspirant < ActiveRecord::Base
  belongs_to :person
  has_one :scientman
  belongs_to :speciality
  has_many :marks
  
  validates :aspirant_type,:presence=>true
  validates :start_study_date,:presence=>true
  validates :maybe_finish_date,:presence=>true
  #validates :scientman_id,:presence => true,:uniqueness => true
  
end
