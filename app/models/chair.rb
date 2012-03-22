class Chair < ActiveRecord::Base
  has_many :specialities
  has_many :scientmans
  
  validates :name,:presence => true,
				:uniqueness => true,
				:length     => { :maximum => 100 },
                :allow_nil  => true
                
  validates :number,:presence => true,
					:uniqueness => true
  
end
