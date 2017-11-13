class Region < ActiveRecord::Base
  has_many :sightings
  validates :description, :presence => true
end
