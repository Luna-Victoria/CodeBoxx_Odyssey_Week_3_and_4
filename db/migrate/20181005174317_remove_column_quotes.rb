class RemoveColumnQuotes < ActiveRecord::Migration[5.2]
  def change
    change_column :quotes, :projectname, :string, :after => "id"
  end
end
