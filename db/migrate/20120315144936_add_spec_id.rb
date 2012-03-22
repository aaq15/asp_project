class AddSpecId < ActiveRecord::Migration
  
  def change
	add_column :subjects, :spec_id, :integer
	remove_column :specialities, :spec_id
  end

end
