class AddCategoryIdsToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :category_ids, :text, array: true, default: []

  end
end
