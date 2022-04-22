class Transaction < ApplicationRecord
  has_many :category_transactions, foreign_key: :transaction_id, dependent: :destroy
  has_many :categories, through: :category_transactions
  belongs_to :user

  validates :name, presence: true
end
