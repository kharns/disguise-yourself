class Costume < ApplicationRecord
  has_one_attached :photo
  belongs_to :owner, class_name: "User"
  has_many :bookings

  validates :price, :photo, :description, :title, presence: true
  validates :title, length: { minimum: 5 }
end
