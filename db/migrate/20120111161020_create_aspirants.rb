class CreateAspirants < ActiveRecord::Migration
  def change
    create_table :aspirants do |t|
      t.integer :aspirant_type
      t.datetime :start_study_date
      t.datetime :maybe_finish_date
      t.datetime :finish_study_date
      t.integer :scientman_id
      t.integer :study_form
      t.boolean :protect_status
      t.datetime :protect_data
      t.boolean :payment
      t.integer :speciality_id
      t.integer :skip
      t.string :rank
      t.datetime :start_date
      t.datetime :finish_date
      t.integer :person_id

      t.timestamps
    end
  end
end
