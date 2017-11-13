require 'rails_helper'

describe "the edit a sighting" do
  it "edits a sighting" do
    animal = Animal.create(:species => 'Tiger')
    sighting = Sighting.create(:latitude => '1j1j1hh3', :longitude => '1j1j1hh3', :animal_id => animal.id, :sight_date => '11/12/2017',)
    visit animal_path(animal)
    click_on 'Edit'
    fill_in 'Longitude', :with => '2j2j2j2'
    click_on 'Update Sighting'
    expect(page).to have_content '2j2j2j2'
  end

  it "gives error when no longitude is given" do
    animal = Animal.create(:species => 'Tiger')
    sighting = Sighting.create(:latitude => '1j1j1hh3', :longitude => '1j1j1hh3', :animal_id => animal.id, :sight_date => '11/12/2017',)
    visit animal_path(animal)
    click_on 'Edit'
    fill_in 'Longitude', :with => ''
    click_button 'Update Sighting'
    expect(page).to have_content 'errors'
  end
end
