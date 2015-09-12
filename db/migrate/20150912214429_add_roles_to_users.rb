class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :roles, :string, array: true, default: ['user'], null: false
    add_index  :users, :roles, using: 'gin'
  end
end
