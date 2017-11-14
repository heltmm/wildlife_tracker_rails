class Animal < ActiveRecord::Base
  has_many :sightings
  has_many :regions, through: :sightings
  validates :species, :presence => true
end
