class Sighting < ActiveRecord::Base
  belongs_to :animal
  belongs_to :region

  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :sight_date, :presence => true
end
