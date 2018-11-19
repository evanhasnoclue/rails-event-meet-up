json.extract! @event, :id, :title, :user, :description, :time, :place, :deadline, :capacity, :photo, :bookings
json.reviews @event.reviews do |review|
  json.extract! review, :id, :title, :content, :booking, :rating
  json.date comment.created_at.strftime("%m/%d/%y")
end
json.users @event.bookings do |booking|
  json.extract! booking, :id, :user
  json.date comment.created_at.strftime("%m/%d/%y")
end
