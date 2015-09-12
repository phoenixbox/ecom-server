class Event < ActiveRecord::Base
  belongs_to :organizer, :class_name => 'User', :foreign_key => 'user_id'
end
