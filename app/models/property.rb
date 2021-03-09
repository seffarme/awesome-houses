class Property < ApplicationRecord
  CATEGORIES = ['Château', 'Maison', 'Tour', 'Camping-car', 'Vaisseau', 'Hôtel', 'Insolite', 'Donjon'].freeze
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :title, presence: true
  validates :category, presence: true
  validates_inclusion_of :category, { in: CATEGORIES }
  validates :price, presence: true
end
