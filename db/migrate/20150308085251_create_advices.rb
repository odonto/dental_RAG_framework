class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.string :category_factory_id
      t.string :outcome_id
      t.string :text

      t.timestamps null: false
    end
  end
end
