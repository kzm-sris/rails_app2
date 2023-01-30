class AddPostBookIdToCreateBookCategoryRelations < ActiveRecord::Migration[6.1]
  def change
    add_column :book_category_relations, :post_book_id, :integer
  end
end
