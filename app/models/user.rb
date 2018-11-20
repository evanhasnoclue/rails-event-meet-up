class User < ApplicationRecord
  has_many :events
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :name, presence: true
  # validates :phone, uniqueness: true
end
