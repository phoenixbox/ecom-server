class InviteUsers < ActiveRecord::Migration
  def change
    change_table :invites do |t|
      t.references :user, index: true
    end
  end
end
