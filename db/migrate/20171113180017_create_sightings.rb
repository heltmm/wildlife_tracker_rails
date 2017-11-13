class CreateSightings < ActiveRecord::Migration[5.1]
  def change
    create_table :sightings do |t|
      t.column :latitude, :string
      t.column :longitude, :string
      t.column :animal_id, :integer
      t.date :sight_date, :date
    end
  end
end
