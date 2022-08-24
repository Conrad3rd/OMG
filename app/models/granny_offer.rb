class GrannyOffer < ApplicationRecord
  belongs_to :user

  validates :hug_amount, presence: true
  validates :details, presence: true
end
