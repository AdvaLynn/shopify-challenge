# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating shops..."
redmart = Shop.create(name: 'Redmart')
bluemart = Shop.create(name: 'Bluemart')
greenmart = Shop.create(name: 'Greenmart')

puts "Creating products..."
apple_pie = Product.create(name: "apple pie", shop: redmart, price: 10)
lipstick = Product.create(name: "lipstick", shop: redmart, price: 12)
strawberry_pie = Product.create(name: "strawberry pie", shop: redmart, price: 9)

puts "Creating orders..."
order_1 = Order.create(order_num: 1, shop: redmart, total: 20)
order_2 = Order.create(order_num: 2, shop: redmart, total: 31)

puts "Creating line items..."
order_1.line_items << LineItem.new(price: 10, quantity: 2, product: apple_pie)
order_2.line_items << LineItem.new(price: 10, quantity: 1, product: apple_pie) << LineItem.new(price: 12, quantity: 1, product: lipstick) << LineItem.new(price: 9, quantity: 1, product: strawberry_pie)
