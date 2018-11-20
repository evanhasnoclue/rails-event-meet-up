class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
  # validates :description, presence: true
  # validates :time, presence: true
  # validates :place, presence: true
  # validates :capacity, presence: true
  # validates :deadline, presence: true
end
