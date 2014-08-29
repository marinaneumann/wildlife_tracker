class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.integer :animal_id
      t.integer :region_id
    end
  end
end
