class RemoveEmployeeId < ActiveRecord::Migration[5.2]
  def change
    remove_column :batteries, :Employees_id
  end
end
