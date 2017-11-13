require 'rails_helper'

describe "the add a animal" do
  it "adds a new animal" do
    visit animals_path
    click_link 'New Animal'
    fill_in 'Species', :with => 'Tiger'
    click_on 'Create Animal'
    expect(page).to have_content 'Tiger'
  end

  it "gives error when no specie is entered" do
    visit new_animal_path
    click_on 'Create Animal'
    expect(page).to have_content 'errors'
  end
end
