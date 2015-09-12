class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :delivery_cd, index: true
      t.integer :state_cd, index: true
      t.integer :invitee_uuid, index: true
      t.integer :invitee_platform_cd, index: true
      t.references :event, index: true
    end
  end
end
