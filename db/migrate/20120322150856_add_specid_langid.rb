class AddSpecidLangid < ActiveRecord::Migration
  def change
	add_column :subjects, :language_id, :integer
  end
  def change
    create_table :language do |t|
      t.string :type_language

      t.timestamps
    end
  end

end
