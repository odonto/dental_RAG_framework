class CreateCategoryFactors < ActiveRecord::Migration
  def change
    create_table :category_factors do |t|
      t.integer :category_id
      t.integer :factor_id

      t.timestamps null: false
    end
  end
end
