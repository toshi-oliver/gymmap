class LikesController < ApplicationController

  def create
    @like = Like.create(user_id: current_user.id, map_id: params[:map_id])
    # Likeテーブルに新たな行を作る
    @likes = Like.where(map_id: params[:map_id])

  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    @likes = Like.where(map_id: params[:map_id])
  end
end