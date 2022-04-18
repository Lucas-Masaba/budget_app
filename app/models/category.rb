class Category < ApplicationRecord
  has_many :category_transactions, foreign_key: :category_id
  has_many :transactions, through: :category_transactions

  belongs_to :user

  validates :name, presence: true

end
