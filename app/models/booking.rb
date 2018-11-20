class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :reviews, dependent: :destroy
  validates :user_id, :uniqueness => { :scope => :event_id }
end
