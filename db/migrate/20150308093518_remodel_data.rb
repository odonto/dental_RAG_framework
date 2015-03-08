class RemodelData < ActiveRecord::Migration
  def change
    add_column :patients, :year_of_birth, :integer
    remove_column :patients, :age
  end
end
