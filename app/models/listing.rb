class Listing < ApplicationRecord
  belongs_to :city
  belongs_to :owner
  has_many :reservations

  validates :available_beds,
  presence: true,
  numericality: { greater_than: 0 }

  validates :description
  presence: true,
  length: { minimum: 140 }

  validates :welcome_message, presene: true 
end
