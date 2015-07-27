class CreateHireTypes < ActiveRecord::Migration
  def change
    create_table :hire_types do |t|

      t.timestamps null: false
    end
  end
end
