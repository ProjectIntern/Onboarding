class CreateGlobals < ActiveRecord::Migration
  def change
    create_table :globals do |t|

      t.timestamps null: false
    end
  end
end
