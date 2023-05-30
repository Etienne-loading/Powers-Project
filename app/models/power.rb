class Power < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :rarity, presence: true
  validates :category, presence: true
  validates :universe, presence: true

end
