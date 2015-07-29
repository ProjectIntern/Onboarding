class AddHireTypeToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :hire_type, :string
  end
end
