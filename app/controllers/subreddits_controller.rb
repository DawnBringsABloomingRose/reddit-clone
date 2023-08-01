class SubredditsController < ApplicationController

  def index
    @subreddits = Subreddit.all
  end

  def new
    @subreddit = Subreddit.new
  end

  def create
    @subreddit = Subreddit.new(subreddit_params)

    if @subreddit.save
      redirect_to @subreddit
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    if params[:title]
      @subreddit = Subreddit.find_by(title: params[:title])
    else
      @subreddit = Subreddit.find(params[:id])
    end
  end

  private
  def subreddit_params
    params.require(:subreddit).permit(:title, :sidebar)
  end
end
