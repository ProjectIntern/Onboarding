class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :description
      t.string :user_name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
