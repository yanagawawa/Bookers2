class BooksController < ApplicationController

  def new
  end

  def create
    @book = book.new(book_params)
    @book.user_id = current_user.id
    redirect_to book_path
  end

  def index
    @user = current_user
  end

  def show
  end

  def destroy
  end

  def edit

  end

  def upadate

  end
  
  private

  def post_image_params
    params.require(:book).permit(:title, :body)
  end

end
