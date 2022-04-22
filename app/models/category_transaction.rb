class CategoryTransaction < ApplicationRecord
  belongs_to :category
  belongs_to :my_transaction, class_name: 'Transaction'
end
