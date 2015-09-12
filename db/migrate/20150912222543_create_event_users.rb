class CreateEventUsers < ActiveRecord::Migration
  def change
    create_table :event_users do |t|
      t.references :user
      t.references :event
      t.timestamps null: false
    end
  end
end
