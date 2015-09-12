class Invite < ActiveRecord::Base
  INVITEE_PLATFORM ||= YAML.load(File.open("#{Rails.root}/config/constants/social_platforms.yml", "r"))
  INVITE_DELIVERY_METHODS ||= YAML.load(File.open("#{Rails.root}/config/constants/invite_delivery_methods.yml", "r"))
  INVITE_STATES ||= YAML.load(File.open("#{Rails.root}/config/constants/invite_states.yml", "r"))

  # As enum
  as_enum :invitee_platform, INVITEE_PLATFORM
  as_enum :delivery, INVITE_DELIVERY_METHODS
  as_enum :state, INVITE_STATES

  # Associations
  belongs_to :event
end
