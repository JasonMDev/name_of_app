# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |n|

    Product.create(
        :name => "Seed Generated Product #{n}", 
        :description => "I created this bike through the seed file.", 
        :image_url => "img/product#{n}.jpg",
        :color => "blue")
end

