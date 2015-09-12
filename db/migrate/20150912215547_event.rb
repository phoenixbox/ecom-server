class Event < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :description
      t.integer :date, null: false
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
