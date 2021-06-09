class UsersController < ApplicationController
  def show
    @user = current_user
    @users = User.find(params[:id])
    @book = Book.new
    @books = @users.books.order("id ASC")
  end
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
end
