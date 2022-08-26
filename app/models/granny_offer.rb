class GrannyOffer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :hug_amount, presence: true
end
