
json.extract! @user, :id, :name, :wechat_id, :phone
json.events @user.events do |event|
  json.extract! event, :id, :title, :description, :time, :place, :capacity, :photo, :deadline
  json.date event.created_at.strftime("%m/%d/%y")
end
json.bookings @user.bookings do |booking|
  json.extract! booking.event, :id, :title, :description, :time, :place, :capacity, :photo, :deadline
  json.date booking.event.created_at.strftime("%m/%d/%y")
end
# json.events @user.events do |event|
#   json.extract! event, :id, :content, :name, :image
# end

# json.extract! @restaurant, :id, :name, :address, :image, :description
# json.reviews @restaurant.comments do |comment|
#   json.extract! comment, :id, :content, :name, :image
#   json.date comment.created_at.strftime("%m/%d/%y")
# end
