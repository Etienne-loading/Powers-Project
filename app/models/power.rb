class Power < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_one_attached :photo

  CATEGORY = ["Hogwart", "The Legend of Zelda", "Flash", "Star Wars", "Dragon Ball"]
  RARITY = ["Legendary", "Epic", "Rare", "Uncommon"]
  UNIVERSE = ["Manga", "Video games", "Saga", "Comics"]
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :rarity, presence: true, inclusion: { in: RARITY }
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :universe, presence: true, inclusion: { in: UNIVERSE }
end
