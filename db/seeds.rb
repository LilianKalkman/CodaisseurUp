User.destroy_all
Category.destroy_all


cool_event = Category.create(name: "cool event")
serious_event = Category.create(name: "serious event")
boring_event = Category.create(name: "boring event")

Lilian = User.create!(email: "liliankalkman@hotmail.com", password: "123456")
Dani = User.create!(email: "dani@hotmail.com", password:"1234567")

Event.create!(name: "Meeting",
  description: "vergaderen enzo",
  location: "Codaisseur",
  price: 3,
  capacity: 10,
  includes_food: true,
  includes_drinks: true,
  active: true,
  user: Lilian,
  categories:[cool_event, boring_event])

  Event.create!(name: "Meeting 2",
    description: "vergaderen enzo",
    location: "Codaisseur BV",
    price: 5,
    capacity: 8,
    includes_food: true,
    includes_drinks: true,
    active: true,
    user: Lilian,
    categories: [cool_event, serious_event])
