class CreateScientmen < ActiveRecord::Migration
  def change
    create_table :scientmen do |t|
      t.string :grade
      t.string :job_title
      t.string :rank
      t.datetime :start_date
      t.datetime :finish_date
      t.integer :person_id

      t.timestamps
    end
  end
end
