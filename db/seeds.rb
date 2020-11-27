# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
bodies_arr = ['V Shape', 'Pear Shape', 'Column Shape', 'Round Shape', 'Hourglass Shape']
for bodies_arr.each do |b|
  body = Body.find_or_initialize_by(name: b)
  body.name = b
  body.save!
end
