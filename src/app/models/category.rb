class Category < ApplicationRecord
    has_many :book_category_relations, dependent: :destroy
    has_many :post_books, through: :book_category_relations
end
