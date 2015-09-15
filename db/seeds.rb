# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
DEFAULT_EVENTS ||= YAML.load(File.open("#{Rails.root}/config/constants/default_events.yml", 'r'))
DEFAULT_EVENTS.each do |e, i|
  puts "Seeding event number:#{i}"
  event = Event.new
  event.occassion = e['occassion']
  event.invited_count = e['invited_count']
  event.year = e['year']
  event.month = e['month']
  event.day = e['day']
  event.cancelled = e['cancelled']
  event.save
end


DEFAULT_CUSTOMERS ||= YAML.load(File.open("#{Rails.root}/config/constants/default_customers.yml", 'r'))
DEFAULT_CUSTOMERS.each_with_index do |e, i|
  puts "Seeding customer number:#{i}"
  customer = Customer.new
  customer.first_name = e['first_name']
  customer.second_name = e['second_name']
  customer.latitude = e['latitude']
  customer.longitude = e['longitude']
  customer.user_id = e['user_id']
  customer.save
end
