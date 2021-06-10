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
    unless 
      @user == current_user
      redirect_to user_path(current_user)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render "edit"
    end
  end
  
   private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
end
