class Mark < ActiveRecord::Base
  belongs_to :aspirant
  belongs_to :subject
end
