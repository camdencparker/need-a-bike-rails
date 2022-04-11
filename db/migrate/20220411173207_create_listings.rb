class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :brand
      t.string :model
      t.string :year
      t.text :description
      t.string :image_url
      t.string :location

      t.timestamps
    end
  end
end
