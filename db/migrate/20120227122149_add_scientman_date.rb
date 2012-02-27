class AddScientmanDate < ActiveRecord::Migration

  def change
	add_column :aspirants, :scientman_day, :date
  end

end
