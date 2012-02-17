class Speciality < ActiveRecord::Base
  has_and_belongs_to_many :subjects
  belongs_to :chair
  has_many :aspirants
  
  validates :name,:presence => true,:uniqueness => true  
end
