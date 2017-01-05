class FavoritesController < ApplicationController
  before_filter :require_login

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @favorite = current_user.favorites.build(tweet: @tweet)

    if @favorite.save
      redirect_to request.referer, notice: "お気に入り登録しました"
    else
      redirect_to request.referer, alert: "このツイートはお気に入り登録できません"
    end
  end

  def destroy
    @favorite = current_user.favorites.find_by!(tweet_id: params[:tweet_id])
    @favorite.destroy
    redirect_to request.referer, notice: "お気に入りを解除しました"
  end

  def favorites
    @user = User.find(params[:id])
  end
end
