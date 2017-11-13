class AddLinkColumn < ActiveRecord::Migration[5.1]
  def change
    add_column(:sightings, :region_id, :integer)
  end
end
