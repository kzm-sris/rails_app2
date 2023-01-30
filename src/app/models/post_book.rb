class PostBook < ApplicationRecord
    belongs_to :user
    has_many :book_comments, dependent: :destroy
    has_many :book_category_relations, dependent: :destroy
    has_many :categories, through: :book_category_relations

    validates :title, presence: true
    validates :body, presence: true
end
