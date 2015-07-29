class AddFirstNameAndLastNameAndEmailAndImageAndPositionAndAboutToGlobal < ActiveRecord::Migration
  def change
    add_column :globals, :first_name, :string
    add_column :globals, :last_name, :string
    add_column :globals, :email, :string
    add_column :globals, :image, :string
    add_column :globals, :position, :string
    add_column :globals, :about, :string
  end
end
