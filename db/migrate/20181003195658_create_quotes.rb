class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.boolean :Building_Residential
      t.boolean :Building_Commercial
      t.boolean :Building_Corporate
      t.boolean :Building_Hybride
      t.integer :Floors
      t.integer :Basement
      t.integer :Appartment
      t.integer :Shops
      t.integer :Parkings
      t.integer :Elevators
      t.integer :Companies
      t.integer :Occupants
      t.integer :ActiveHours
      t.integer :TotalElevators
      t.boolean :Range_Standard
      t.boolean :Range_Premium
      t.boolean :Range_Excelium
      t.integer :TotalPrice

      t.timestamps
    end
  end
end
