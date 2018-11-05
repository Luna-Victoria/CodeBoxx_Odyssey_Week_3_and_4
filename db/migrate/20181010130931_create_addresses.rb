class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|

      t.string :Address_type
      t.string :Status
      t.string :Entity
      t.string :Number_street
      t.integer :Suite_or_apartment
      t.string :City
      t.string :Zip_or_postal_code
      t.string :Country
      t.string :Notes

      t.timestamps
    end
  end
end
