class AddColoumnQuote < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :Company_name, :string
    add_column :quotes, :Contact_email, :string
  end
end
