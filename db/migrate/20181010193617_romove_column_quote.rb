class RomoveColumnQuote < ActiveRecord::Migration[5.2]
  def change
    remove_column :quotes, :projectname
    add_column :quotes, :companyname, :string
    add_column :quotes, :contactemail, :string
  end
end
