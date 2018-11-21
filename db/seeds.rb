# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: 'Star Wars' }, { title: 'Lord of the Rings' }])
#   Character.create(title: 'Luke', movie: movies.first)


User.destroy_all

User.create(name: "Ada", wechat_id: "1")
User.create(name: "Boris", wechat_id: "2")
# User.create(name: "C", wechat_id: "3")
# User.create(name: "D", wechat_id: "4")

Event.destroy_all
Event.create(user_id: 1,  title: "千山暮雪",
        address: "jingan temple",
        description: "MOUNTAIN IN THE SKY",
        capacity: 10,
        photo: "http://wallpapercave.com/wp/PzaH3FR.jpg")
Event.create(user_id: 1, title: "田园新村",
        address: "beijing west road",
        description: "90 TIANYUAN ZHENG",
        capacity: 10,
        photo: "http://russiatrek.org/blog/wp-content/uploads/2013/05/beautiful-scenery-of-the-mountain-ingushetia-russia-11.jpg")
Event.create(user_id: 2, title: "极地风光",
        address: "nanjing west road",
        description: "EXTREME EAST",
        capacity: 30,
        photo: "https://www4.bing.com/th?id=OIP.rlD48_vU1S_e3LrzA4i5qAHaEo&pid=Api&w=1600&h=1000&rs=1&p=0")
Event.create(user_id: 2, title: "樱花烂漫时",
        address: "changning road",
        description: "FlOWER ZONE",
        capacity: 20,
        photo: "http://www.dvd-ppt-slideshow.com/blog/wp-content/uploads/2010/07/natural-scenery-13.jpg")
# Event.create(user_id: 3, title: "test3", description: "cc", time: "", place: "", capacity: 10, deadline: "")


Booking.destroy_all
Booking.create(user_id:1, event_id:3)
Booking.create(user_id:1, event_id:4)
Booking.create(user_id:2, event_id:1)
Booking.create(user_id:2, event_id:2)

Review.destroy_all
Review.create(booking_id:1, title:"Good trip", rating:4)
Review.create(booking_id:3, title:"Just soso", rating:3)

