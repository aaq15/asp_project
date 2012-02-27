class AddChairsSpeciality < ActiveRecord::Migration
  
  def change
	add_column :specialities, :chair_id, :integer
  end

end
