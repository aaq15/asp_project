class Addspecid < ActiveRecord::Migration

  def change
	add_column :specialities, :spec_id, :integer
	remove_column :specialities, :chairs_id
  end

end
