class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :second_name, null: false
      t.integer :user_id, null: false
      t.decimal :latitude, { :precision=>10, :scale=>6 }
    	t.decimal :longitude, { :precision=>10, :scale=>6 }
      t.timestamps null: false
    end
  end
end
