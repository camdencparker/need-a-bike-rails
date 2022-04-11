class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :location
      t.string :password_digest
      t.string :profile_pic

      t.timestamps
    end
  end
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
  def change
    create_table :conversations do |t|
      t.integer :leaser_id
      t.integer :renter_id

      t.timestamps
    end
  end
  def change
    create_table :messages do |t|
      t.integer :conversation_id
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
