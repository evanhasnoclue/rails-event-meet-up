class Review < ApplicationRecord
  belongs_to :booking
  # belongs_to :event, through: :bookings
  # belongs_to :user, through: :bookings
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
