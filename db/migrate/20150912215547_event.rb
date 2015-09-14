class Event < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :occassion, null: false
      t.integer :invited_count, null: false
      t.integer :year, null: false
      t.integer :month, null: false
      t.integer :day, null: false
      t.boolean :cancelled, default: false
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
