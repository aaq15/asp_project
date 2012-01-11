class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :second_name
      t.string :last_name
      t.datetime :birthday
      t.string :telephone
      t.string :email
      t.boolean :male
      t.integer :status
      t.integer :scientman_id
      t.integer :aspirant_id

      t.timestamps
    end
  end
end
