class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :NHS_number
      t.integer :age

      t.timestamps null: false
    end
  end
end
