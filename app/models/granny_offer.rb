class GrannyOffer < ApplicationRecord
  belongs_to :user

  validates :hug_amount, presence: true
<<<<<<< HEAD
  validates :details, presence: true
=======
  validates :available, presence: true
>>>>>>> master
end
