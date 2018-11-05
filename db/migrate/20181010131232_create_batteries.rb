class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.references :building, foreign_key: true
      t.references :employee, foreign_key: true

      t.string :Type
      t.string :Status
      t.string :Employees_id
      t.date :Activation_date
      t.date :Last_inspection_date
      t.string :Operation_certificate
      t.string :Information
      t.string :Notes

      t.timestamps
    end
  end
end
