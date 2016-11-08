class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
    @houses = House.all.map {|house| [house.name, house.id]}
  end

  def create
    @character = Character.create!(character_params)
    redirect_to character_path
  end

  def update
    @character = Character.find(params[:id])
    @character.update!(character_params)
    redirect_to character_path(@character)
  end

  def edit
    @character = Character.find(params[:id])
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path
  end

  private
  def character_params
    params.require(:character).permit(:title, :img_url, :current_house, :house_id)
  end
end
