class Event < ActiveRecord::Base
  belongs_to :organizer, :class_name => 'User', :foreign_key => 'user_id'
  has_many :event_users
  has_many :users, through: :event_users
end
