class RemoveCreatdIdEmployees < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :created_at
    remove_column :employees, :updated_at
  end
end
