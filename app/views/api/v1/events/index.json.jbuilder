json.events do |event|
  json.extract! event, :id, :title, :user, :description, :time, :place, :deadline, :capacity, :photo, :reviews, :bookings
end
