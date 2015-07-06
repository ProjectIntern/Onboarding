class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :code
      t.string :image
      t.string :facebook
      t.string :linkedin
      t.string :twitter
      t.string :instagram
      t.string :location
      t.string :position
      t.string :school

      t.timestamps
    end
  end
end
