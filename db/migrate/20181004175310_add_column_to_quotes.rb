class AddColumnToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :projectname, :string
  end
end
