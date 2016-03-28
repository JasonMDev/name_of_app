# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bike11 = Product.create(
    :name => "Black Bike", 
    :description => "Sublime dark tones to match those moody days. ", 
    :image_url => "bike_black.jpg",
    :color => "Black",
    :location => "Worting",
    :price => 20)

bike12 = Product.create(
    :name => "Blue Bike", 
    :description => "An awesome bike for riding along the coast.", 
    :image_url => "bike_blue.jpg",
    :color => "Blue",
    :location => "Lychpit",
    :price => 20)

bike13 = Product.create(
    :name => "Green Bike", 
    :description => "Dependable bike for those wandering days.", 
    :image_url => "bike_green.jpg",
    :color => "Green",
    :location => "Old Basing",
    :price => 20)


bike14 = Product.create(
    :name => "White Bike", 
    :description => "The white knoght of bike. Reliable and robust.", 
    :image_url => "bike_white.jpg",
    :color => "White",
    :location => "South Ham",
    :price => 20)

bike15 = Product.create(
    :name => "Shell white bike", 
    :description => "For the more refined biker.", 
    :image_url => "bike_white2.jpg",
    :color => "Shell White",
    :location => "Brighton Hill",
    :price => 20)

bike21 = Product.create(
    :name => "Black Bike", 
    :description => "Sublime dark tones to match those moody days. ", 
    :image_url => "bike_black.jpg",
    :color => "Black",
    :location => "Kempshott",
    :price => 20)

bike22 = Product.create(
    :name => "Blue Bike", 
    :description => "An awesome bike for riding along the coast.", 
    :image_url => "bike_blue.jpg",
    :color => "Blue",
    :location => "Black Hill",
    :price => 20)

bike23 = Product.create(
    :name => "Green Bike", 
    :description => "Dependable bike for those wandering days.", 
    :image_url => "bike_green.jpg",
    :color => "Green",
    :location => "Darling",
    :price => 20)


bike24 = Product.create(
    :name => "White Bike", 
    :description => "The white knoght of bike. Reliable and robust.", 
    :image_url => "bike_white.jpg",
    :color => "White",
    :location => "River Run",
    :price => 20)

bike25 = Product.create(
    :name => "Shell white bike", 
    :description => "For the more refined biker.", 
    :image_url => "bike_white2.jpg",
    :color => "Shell White",
    :location => "Basildon",
    :price => 20)


order1 = Order.create(:user_id=> nil, :product_id => 1, :total => nil)
order2 = Order.create(:user_id=> nil, :product_id => 2, :total => nil)
order3 = Order.create(:user_id=> nil, :product_id => 3, :total => nil)
order4 = Order.create(:user_id=> nil, :product_id => 4, :total => nil)
order5 = Order.create(:user_id=> nil, :product_id => 3, :total => nil)
