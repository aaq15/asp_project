class Aspirant < ActiveRecord::Base
  has_one :person
  has_one :scientman
  belongs_to :speciality
  has_many :marks
end
