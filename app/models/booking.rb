class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :costume

  validates :start_date, :end_date, :total_price, :costume, :status, presence: true
  validates :status, inclusion: { in: %w[pending declined accepted] }

  validate :start_date_cannot_be_in_the_past, :end_date_must_be_after_start

  def start_date_cannot_be_in_the_past
    errors.add(:start_date, "can't be in the past") if
      start_date < Date.today
  end

  def end_date_must_be_after_start
    errors.add(:end_date, "must be after start date") if
      end_date <= start_date
  end
end
