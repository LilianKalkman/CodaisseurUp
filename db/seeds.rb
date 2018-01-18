
Photo.destroy_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all

cool_event = Category.create(name: "cool event")
serious_event = Category.create(name: "serious event")
boring_event = Category.create(name: "boring event")

Lilian = User.create!(email: "liliankalkman@hotmail.com", password: "123456")
Dani = User.create!(email: "dani@hotmail.com", password:"1234567")

  event1 = Event.create!(name: "Meeting",
  description: "vergaderen enzo",
  location: "Codaisseur",
  price: 3,
  capacity: 10,
  includes_food: true,
  includes_drinks: true,
  active: true,
  user: Lilian,
  categories:[cool_event, boring_event])

  event2 = Event.create!(name: "Meeting 2",
    description: "vergaderen enzo",
    location: "Codaisseur BV",
    price: 5,
    capacity: 8,
    includes_food: true,
    includes_drinks: true,
    active: true,
    user: Lilian,
    categories: [cool_event, serious_event])


photo1 = Photo.create!(remote_image_url:"http://res.cloudinary.com/dknq5n8bi/image/upload/c_scale,w_3264/v1516272507/IMG_0243_xjrb9y.jpg", event: event1)
photo2 = Photo.create!(remote_image_url:"http://res.cloudinary.com/dknq5n8bi/image/upload/v1516272556/IMG_2558_skdhgp.jpg", event: event2)
photo3 = Photo.create!(remote_image_url:"http://res.cloudinary.com/dknq5n8bi/image/upload/v1516274433/yltgfzmaa7pa6tpua4sh.jpg", event: event1)
