require 'rails_helper'

describe Sighting do
  it { should validate_presence_of :sight_date }
  it { should validate_presence_of :latitude }
  it { should validate_presence_of :longitude }
  it { should belong_to :animal }
end
