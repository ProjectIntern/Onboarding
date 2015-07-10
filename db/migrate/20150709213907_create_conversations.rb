class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.string :comment
      t.string :sender
      t.string :receiver_email
      t.string :receiver_name
      t.string :receiver_image
      t.string :receiver_id
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
