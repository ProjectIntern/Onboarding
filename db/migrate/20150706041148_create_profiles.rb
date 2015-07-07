class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :image
      t.string :facebook
      t.string :linkedin
      t.string :twitter
      t.string :instagram
      t.string :location
      t.string :position
      t.string :school

      t.timestamps null: false
    end
  end
end
