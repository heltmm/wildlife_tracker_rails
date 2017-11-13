class Sighting < ActiveRecord::Base
  belongs_to :animal

  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :sight_date, :presence => true
end
