class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.references :column, foreign_key: true

      t.integer :Serial_number
      t.string :Model
      t.string :Type
      t.string :Status
      t.date :Activation_date
      t.date :Last_inspection_date
      t.string :Inspection_certificate
      t.string :Information
      t.string :Notes

      t.timestamps
    end
  end
end
