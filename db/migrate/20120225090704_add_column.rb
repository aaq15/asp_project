class AddColumn < ActiveRecord::Migration
  def change
	add_column :specialities, :key_specialiti, :integer
	add_column :marks, :value_type, :integer
	add_column :marks, :day_exam, :date
  end
end
