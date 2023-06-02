class Booking < ApplicationRecord
  belongs_to :power
  belongs_to :user
  has_one :review, dependent: :destroy
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: ["confirmed", "pending", "canceled"] }

  def pending?
    status == 'pending'
  end
end
