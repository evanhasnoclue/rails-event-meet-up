json.events do
  json.array! @events do |event|
    json.extract! event, :id, :title, :user, :description, :time, :address, :latitude, :longitude, :deadline, :capacity, :photo, :reviews, :bookings
  end
end
