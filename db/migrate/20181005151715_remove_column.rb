class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :quotes, :Range_Standard
    remove_column :quotes, :Range_Premium
    change_column :quotes, :Range_Excelium, :string
    rename_column :quotes, :Range_Excelium, :Quality
  end
end
