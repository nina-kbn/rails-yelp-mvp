puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "03 20 44 55 66", category: "french"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "04 13 44 55 66", category: "italian"}
sushy_house =  {name: "Sushy House", address: "A bla bla", phone_number: "04 13 11 22 33", category: "japanese"}
chinese_house =  {name: "Chinese House", address: "56A toto", phone_number: "04 13 99 88 77", category: "chinese"}
baraque_a_frite =  {name: "Baraque a frite", address: "5 titi", phone_number: "03 20 22 33 44", category: "belgian"}

[dishoom, pizza_east, sushy_house, chinese_house, baraque_a_frite].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
