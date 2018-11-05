class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :Company_contact_full_name
      t.string :Company_name
      t.string :Company_contact_email
      t.string :Company_contact_phone_number
      t.string :Building_project_name
      t.string :Project_description
      t.text :Message
      t.string :File_attached
      t.date :Date_of_contact_request

      t.timestamps
    end
  end
end
