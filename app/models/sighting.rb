class Sighting < ActiveRecord::Base
  belongs_to :animal

  validates :latitude, :longitude, :sight_date, :presence => true
end
