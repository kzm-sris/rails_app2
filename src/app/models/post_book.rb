class PostBook < ApplicationRecord
    belongs_to :user
    has_many :book_comments, dependent: :destroy
end
