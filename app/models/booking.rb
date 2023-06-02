class Booking < ApplicationRecord
  STATUS = ["confirmed", "pending", "canceled"]

  belongs_to :power
  belongs_to :user
  has_one :review, dependent: :destroy
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: STATUS }

  def pending?
    status == 'pending'
  end
end
