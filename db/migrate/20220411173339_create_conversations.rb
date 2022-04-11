class CreateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.integer :leaser_id
      t.integer :renter_id

      t.timestamps
    end
  end
end
