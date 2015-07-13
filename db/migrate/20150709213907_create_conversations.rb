class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.string :comment
      t.string :sender_email
      t.string :sender_name
      t.string :sender_id
      t.string :receiver_email
      t.string :receiver_name
      t.string :receiver_id
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
