class AddNameToHireTypes < ActiveRecord::Migration
  def change
    add_column :hire_types, :name, :string
  end
end
