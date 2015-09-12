class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :line_3
      t.string :city
      t.string :province
      t.string :zipcode
      t.decimal :latitude, { :precision=>10, :scale=>6 }
    	t.decimal :longitude, { :precision=>10, :scale=>6 }
      t.integer :iso_country_code_cd
      t.integer :type_cd, index: true
      t.text :description
      t.integer :addressable_id
      t.string :addressable_type
      t.timestamps null: false
    end
    add_index :addresses, :iso_country_code_cd
  end
end
