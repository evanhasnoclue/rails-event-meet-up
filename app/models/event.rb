class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  validates :title, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_taggable_on :tags

  # validates :description, presence: true
  # validates :time, presence: true
  # validates :address, presence: true
  # validates :capacity, presence: true
  # validates :deadline, presence: true
end
