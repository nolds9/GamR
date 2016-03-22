class GamesController < ApplicationController
  def index
    @featured_games = Game.where(featured: true)
  end

  # new
  def new
    @game = Game.new(game_params)
  end

  # create
  def create
    @game = Game.create!(game_params)

    redirect_to game(game_params)
  end

  #show
  def show
    @game = Game.find(params[:id])
  end

  # edit
  def edit
    @game = Game.find(params[:id])
  end


  # update
  def update
    @game = Game.find(params[:id])
  end

  # destroy
  def destroy
    @game = Game.find(params[:id])
  end

  private
  def game_params
    params.require(:game).permit(:name, :img_url, :release_date, :price)
  end

end
