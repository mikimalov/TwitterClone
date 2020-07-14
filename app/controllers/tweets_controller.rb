class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user
    if @tweet.save
      redirect_to @tweet
    else
      render :new
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    if valid_user?(@tweet.user)
      if @tweet.update(tweet_params)
        redirect_to @tweet
      else
        render :edit
      end
    else
      render :edit
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    if valid_user?(@tweet.user)
      @tweet.destroy
      redirect_to tweets_path
    else
      redirect_to root_path
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title, :body)
  end
end
