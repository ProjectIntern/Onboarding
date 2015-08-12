class CreateHireTypeBoards < ActiveRecord::Migration
  def change
    create_table :hire_type_boards do |t|
      t.string :name
      t.string :user_id
      t.string :user_name

      t.timestamps null: false
    end
  end
end
