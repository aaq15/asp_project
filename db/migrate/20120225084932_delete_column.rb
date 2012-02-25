class DeleteColumn < ActiveRecord::Migration
  def change
	remove_column :aspirants, :rank    
  end
end
