class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :granny_offer
end
