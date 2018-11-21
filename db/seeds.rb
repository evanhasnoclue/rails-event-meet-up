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
        address: "Mountain in the sky",
        description: "10 people",
        capacity: 10,
        photo: "http://2.bp.blogspot.com/-x1kTluVwm7w/UUMn89GYdMI/AAAAAAAAUjI/rYf1pdikUws/s1600/Nature+Scenery+Wallpapers+1.jpg")
Event.create(user_id: 1, title: "田园新村",
        address: "90 TIANYUAN ZHENG",
        description: "7 people",
        capacity: 10,
        photo: "http://russiatrek.org/blog/wp-content/uploads/2013/05/beautiful-scenery-of-the-mountain-ingushetia-russia-11.jpg")
Event.create(user_id: 2, title: "极地风光",
        address: "EXTREME EAST",
        description: "30 people",
        capacity: 30,
        photo: "http://4.bp.blogspot.com/-tcIOYxa5akg/T-spBfyFBZI/AAAAAAAAAyQ/Q6zLAg_mFoQ/s1600/natural-scenery-7.jpg")
Event.create(user_id: 2, title: "樱花烂漫时",
        address: "FlOWER ZONE",
        description: "20 people",
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

