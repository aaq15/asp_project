class AddWorkTitle < ActiveRecord::Migration

  def change
	add_column :aspirants, :work_title, :string
  end

end
