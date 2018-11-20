class User < ApplicationRecord
  has_many :events
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :name, presence: true
  validates :wechat_id, uniqueness: true
  # validates :phone, uniqueness: true
end
