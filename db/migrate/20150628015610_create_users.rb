class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :password_confirmation
      t.string :code
      t.string :image, :default => 'other/default.jpg'
      t.string :facebook, :default => ""
      t.string :linkedin, :default => ""
      t.string :twitter, :default => ""
      t.string :instagram, :default => ""
      t.string :location, :default
      t.string :position, :default
      t.string :about, :default
      t.string :terms
      t.timestamps
    end
  end
end
