# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Reset the 'users' table
User.delete_all
sam = User.create name: 'Sam Kim', email: 'sam@example.com', password: 'kim'
ben = User.create name: 'Ben Lu', email: 'ben@example.com', password: 'lu'
eliott = User.create name: 'Eliott Joo', email: 'eliott@example.com', password: 'joo'

# Reset the 'cards' table
Card.delete_all
# only use a small sample of ~1200 total cards for now
card_data = JSON.parse(open('db/cards_truncated.json').read)
card_data.each do |data|
 	c = Card.create name: data['name'],
 					id: data['id']
end

# Reset the 'Filters' table
Filter.delete_all

puts "#{User.count} users."
puts "#{Card.count} cards."
puts "#{Filter.count} filters."