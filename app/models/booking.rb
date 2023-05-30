class Booking < ApplicationRecord
  belongs_to :power
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :status, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
end
