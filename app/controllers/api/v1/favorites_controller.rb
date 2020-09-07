class Api::V1::FavoritesController < ApplicationController
  before_action :load_property, only: :index
  before_action :load_favorite, only: %i[show update destroy]
  before_action :authenticate_with_token!, only: %i[create update destroy]

  def index
    @favorities = @property.favorities
    favorites_serializer = parse_json @favorities
    json_response 'Index favorites successfully', true, { favorites: favorites_serializer }, :ok
  end

  def show
    favorite_serializer = parse_json @favorite
    json_response 'Show favorite successfully', true, { favorite: favorite_serializer }, :ok
  end

  def create
    favorite = Favorite.new favorite_params
    favorite.user_id = current_user.id
    favorite.property_id = params[:property_id]
    if favorite.save
      favorite_serializer = parse_json favorite
      json_response 'Created favorite successfully', true, { favorite: favorite_serializer }, :ok
    else
      json_response 'Created favorite fail', false, {}, :unproccessable_entity
    end
  end

  def update
    if correct_user @favorite.user
      if @favorite.update favorite_params
        favorite_serializer = parse_json @favorite
        json_response 'Updated favorite successfully', true, { favorite: favorite_serializer }, :ok
      else
        json_response 'Updated favorite fail', false, {}, :unproccessable_entity
      end
    else
      json_response 'You dont have permission to do this', false, {}, :unauthorized
    end
  end

  def destroy
    if correct_user @favorite.user
      if @favorite.destroy
        json_response 'Deleted favorite successfully', true, {}, :ok
      else
        json_response 'Deleted favorite fail', false, {}, :unproccessable_entity
      end
    else
      json_response 'You dont have permission to do this', false, {}, :unauthorized
    end
  end

  private

  def load_property
    @property = Property.find_by id: params[:property_id]
    json_response 'Cannot find a property', false, {}, :not_found unless @property.present?
  end

  def load_favorite
    @favorite = Favorite.find_by id: params[:id]
    json_response 'Cannot find a favorite', false, {}, :not_found unless @favorite.present?
  end

  def favorite_params
    params.require(:favorite).permit :property_id, :user_id
  end
end
