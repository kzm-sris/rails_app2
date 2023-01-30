class BookCategoryRelation < ApplicationRecord
    belongs_to :post_book
    belongs_to :category
end
