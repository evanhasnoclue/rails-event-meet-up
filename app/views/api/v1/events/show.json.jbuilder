json.extract! @event, :id, :title, :user, :description, :time, :address, :latitude, :longitude, :deadline, :capacity, :photo, :tag_list
# , :bookings, :reviews
json.reviews @event.reviews do |review|
  json.extract! review, :id, :title, :content, :booking, :rating
  json.date review.created_at.strftime("%m/%d/%y")
  json.booking_user review.booking.user
end
json.bookings @event.bookings do |booking|
  json.extract! booking, :id, :user
  json.date booking.created_at.strftime("%m/%d/%y")
end
