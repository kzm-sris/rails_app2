class BookCommentsController < ApplicationController
    def create
        post_book = PostBook.find(params[:post_book_id])
        comment = BookComment.new(book_comment_params)
        comment.user_id = current_user.id
        comment.post_book_id = post_book.id
        comment.save
        redirect_to post_book_path(post_book)
    end

    def destroy
        BookComment.find(params[:id]).destroy
        redirect_to post_book_path(params[:post_book_id])
    end
    private

    def book_comment_params
        params.require(:book_comment).permit(:comment)
    end
end
