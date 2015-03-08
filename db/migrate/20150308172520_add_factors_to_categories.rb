class AddFactorsToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :clinical_factors, :text
    add_column :categories, :patient_factors, :text
  end
end
