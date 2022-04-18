class AddCategoryRefToCategoryTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :category_transactions, :category, foreign_key: { to_table: :categories }, null: false

  end
end
