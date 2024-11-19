class Costume < ApplicationRecord
  belongs_to :user, foreign_key: :owner_id
  has_many :bookings

  validates :price, :photo_url, :description, :title, presence: true
  validates :title, length: { minimum: 5 }
end
