class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :uid, null: false
      t.string :provider, null: false
      t.string :token, null: false
      t.integer :user_id, null: false
      t.string :token_type, null: false
      t.integer :expiration, null: false
    end
    add_index :authentications, :user_id
  end
end
