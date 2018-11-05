class AddColumnQuoteDate < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :quote_date, :string
  end
end
