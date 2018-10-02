class MapsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
  end
  
  def new
    @map = Map.new
  end

  def create
    @map = Map.create(map_params)
    redirect_to action: index
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def map_params
    params.required(:map).permit(:name, :text, :imgae, categories_attributes: [:id], places_attributes: [:id]).merge(user_id: current_user.id)
  end 
end
 