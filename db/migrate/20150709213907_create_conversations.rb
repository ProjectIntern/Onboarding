class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.string :comment
      t.string :sender
      t.string :receiver
      t.string :conversing, array: true, default: []
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
