class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  def index
    @subreddits = Subreddit.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
