class Address < ActiveRecord::Base
  ISO_COUNTRY_CODES ||= YAML.load(File.open("#{Rails.root}/config/constants/iso_country_codes.yml", 'r')).map {|country| country["code"] }
  ADDRESS_TYPES ||= YAML.load(File.open("#{Rails.root}/config/constants/address_types.yml", 'r'))

  # Validations
  validates :latitude, presence: true
  validates :longitude, presence: true

  # Enums
  as_enum :iso_country_code, ISO_COUNTRY_CODES
  as_enum :type, ADDRESS_TYPES

  # Associations
  belongs_to :addressable, polymorphic: true
end
