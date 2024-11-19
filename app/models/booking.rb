class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :costume

  validates :start_date, :end_date, :total_price, :owner, :costume, :status, presence: true
  validates :status, inclusion: { in: %w[pending declined accepted] }
end
