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
  event.cancelled = e['cancelled'] || false
  event.save
end
