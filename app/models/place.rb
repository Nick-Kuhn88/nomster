class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode 
  
  validates :name, presence: true, length: { minimum: 3, maximum: 60 }
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 4 }
end
