class ChangeHireTypeToHireTypeStr < ActiveRecord::Migration
  def change
  	rename_column :messages, :hire_type, :hire_type_str
  end
end
