class CreateSubjectsSpecialities < ActiveRecord::Migration
  def change
    create_table :subjects_specialities, :id=>false do |t|
      t.integer :subject_id
      t.integer :speciality_id
      t.timestamps
    end
  end
end
