# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

User.create(name: "A")
User.create(name: "B")
User.create(name: "C")
User.create(name: "D")

Event.destroy_all
Event.create(user_id: 1, title: "test1")
Event.create(user_id: 2, title: "test2")
Event.create(user_id: 3, title: "test3")
# Event.create(user_id: 3, title: "test3", description: "cc", time: "", place: "", capacity: 10, deadline: "")


Booking.destroy_all
Booking.create(user_id:1, event_id:1)
Booking.create(user_id:1, event_id:2)
Booking.create(user_id:2, event_id:2)
Booking.create(user_id:3, event_id:3)

Review.destroy_all
Review.create(booking_id:1, title:"A", rating:4)
Review.create(booking_id:2, title:"B", rating:3)
