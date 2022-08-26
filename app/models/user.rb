class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum granny: [ :user, :granny ]
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_one :granny_offer
  has_many :bookings
end
