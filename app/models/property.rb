class Property < ApplicationRecord
  CATEGORIES = ['Château', 'Maison', 'Tour', 'Camping-car', 'Vaisseau', 'Hôtel', 'Autre', 'Donjon'].freeze
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :title, presence: true
  validates :category, presence: true
  validates_inclusion_of :category, { in: CATEGORIES }
  validates :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
