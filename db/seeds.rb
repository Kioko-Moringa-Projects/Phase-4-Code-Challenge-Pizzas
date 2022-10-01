puts "Seeding restaurants...🍽"
Restaurant.create!([
  {
    name: "Nene's Pizza",
    address: "Suguta Rd, Nairobi"
  },
  {
    name: "Dominos Pizza Westlands",
    address: "Woodvale Grove, Nairobi"
  },
  {
    name: "Pizza Hut Yaya Center",
    address: "Yaya Centre, Argwings Kodhek Rd, Nairobi"
  },
  {
    name: "Feaston Pizzeria & Eatery",
    address: "Kingfisher Nest mwanzi road Opposite Oval, Nairobi"
  },
  {
    name: "La dolce vita",
    address: "3rd Muthaiga Shopping Centre, Limuru Rd, Nairobi"
  },
  {
    name: "Mediterraneo Ristorante",
    address: "Ngong Rd, Junction Shopping Centre"
  },
  {
    name: "GG's Italian Pizzeria",
    address: "Lantana Rd, Nairobi"
  },
  {
    name: "Pepino's Pizza kimathi",
    address: "Kimathi St, Nairobi"
  },
  {
    name: "Pizza Inn Ola Westlands",
    address: "Ring Rd Parklands, Nairobi"
  },
  {
    name: "La Cantina",
    address: "00505 St Daniel Comboni Rd, Nairobi"
  }
])
puts "Seeding pizzas...🍕"
Pizza.create!([
    
  {
    name: "BBQ Chicken",
    ingredients: "Dough, BBQ sauce, Chicken, Cilantro, Red Onions, Fontina Cheese"
  },
  {
    name: "Hawaiian",
    ingredients: "Dough, Sauce, Cheese, Ham, Pineapple "
  },
  {
    name: "Cheesy Pizza",
    ingredients: "Dough, Tomato Sauce, Cheese"
  },
  
  {
    name: "Margherita Pizza",
    ingredients: "Dough, Sauce, Cheese, Basil"
  },
  
  {
    name: "Vegeterian",
    ingredients: "Dough, Sauce, Cheese, Red Peppers, Green Peppers, Onions, Mushrooms"
  },
  {
    name: "Pepperoni Delight",
    ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"
  },
  {
    name: "Olive Pizza",
    ingredients: "Dough, Sauce, Cheese, Feta, Artichokes, Kalamata Olives"
  }
])

puts "Seeding restaurants with pizzas...🍽🍕"
  Restaurant.all.each do |restaurant|
    rand(1..10).times do
      pizza = Pizza.find(Pizza.pluck(:id).sample)
      RestaurantPizza.create!(restaurant_id: restaurant.id, pizza_id: pizza.id, price: rand(3..29))
    end
  end

puts "Done...✅"