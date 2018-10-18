class MapsController < ApplicationController

  before_action :move_to_index, except: [:index,:show]

  def index
    @maps = Map.includes(:user).order('id ASC').limit(3)
  end

  def show
    @map = Map.find(params[:id])
  end

  def new
    @map = Map.new
  end

  def create
    Map.create(map_params) 
  end

  def destroy
    map = Map.find(params[:id])
    map.destroy if map.user_id == current_user.id
  end

  def edit
    @map = Map.find(params[:id])
  end

  def update
    map = Map.find(params[:id])
    map.update(map_params) if map.user_id == current_user.id
  end

  def search
    if params[:keyword].present?
    name_ids = Map.where("name LIKE(?)", "%#{params[:keyword]}%" ).pluck(:id)
    end
    if params[:place_id].present?
    place_id_ids = Map.where("place_id = ?", params[:place_id]).pluck(:id)
    end
    if params[:category_id].present?
    category_id_ids = Map.where("category_id = ?", params[:category_id]).pluck(:id)
    end
    @maps = Map.where("id IN (?) or id IN (?) or id IN (?)", name_ids, place_id_ids, category_id_ids)
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def map_params
    params.required(:map).permit(:name, :content, :image, :category_id, :place_id).merge(user_id: current_user.id)
  end 
end
 