class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.integer :rule_id
      t.string :risk

      t.timestamps null: false
    end
  end
end
