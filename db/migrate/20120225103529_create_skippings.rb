class CreateSkippings < ActiveRecord::Migration
  def change
    create_table :skippings do |t|
      t.integer :aspirant_id
      t.date :start
      t.date :finish

      t.timestamps
    end
  end
end
