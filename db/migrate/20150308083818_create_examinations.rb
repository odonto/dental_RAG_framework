class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.datetime :date_taken
      t.integer :patient_id

      t.timestamps
    end
  end
end
