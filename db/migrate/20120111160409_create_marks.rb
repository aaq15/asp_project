class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :value
      t.integer :aspirant_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
