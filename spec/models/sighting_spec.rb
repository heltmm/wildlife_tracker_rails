require 'rails_helper'

describe Sighting do
  it { should validate_presence_of :sight_date, :latitude, :longitude }
  it { should belong_to :animal }
end
