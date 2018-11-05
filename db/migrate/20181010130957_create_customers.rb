class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.references :user, foreign_key: true
      t.references :address, foreign_key: true

      t.date :Client_creation_Date
      t.string :Company_name
      t.string :Head_office_address
      t.string :Company_contact_phone_number
      t.string :Company_contact_email
      t.string :Company_description
      t.string :Technical_service_contact_full_name
      t.string :Technical_service_contact_phone_number
      t.string :Technical_service_contact_email

      t.timestamps
    end
  end
end
