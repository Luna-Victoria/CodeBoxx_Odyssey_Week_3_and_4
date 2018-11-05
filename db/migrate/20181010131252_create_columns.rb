class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.references :battery, foreign_key: true

      t.string :Type
      t.integer :Number_of_level
      t.string :Status
      t.string :Information
      t.string :Notes

      t.timestamps
    end
  end
end
