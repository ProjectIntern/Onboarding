class CreateHireTypeBoards < ActiveRecord::Migration
  def change
    create_table :hire_type_boards do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end