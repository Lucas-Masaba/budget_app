class AddTransactionRefToCategoryTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :category_transactions, :transaction, foreign_key: { to_table: :transactions }, null: false

  end
end
