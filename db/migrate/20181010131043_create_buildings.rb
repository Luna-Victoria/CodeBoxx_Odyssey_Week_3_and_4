class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.references :customer, foreign_key: true
      t.references :address, foreign_key: true

      t.string :Building_address
      t.string :Admin_full_name
      t.string :Admin_phone_number
      t.string :Admin_email
      t.string :Building_technical_contact_full_name
      t.string :Building_technical_contact_phone_number
      t.string :Building_technical_contact_email

      t.timestamps
    end
  end
end
