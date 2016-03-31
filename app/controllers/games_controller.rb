class GamesController < ApplicationController
  def index
    @featured_games = Game.where(featured: true)
    # NHO: Like this idea, who decides what games are featured? Could also include an index of all games / filter
  end

  # new
  def new
    @game = Game.new
  end

  # create
  def create
    @game = Game.create!(game_params)

    redirect_to root_path
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
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  # destroy
  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    redirect_to games_path
  end



  private
  def game_params
    params.require(:game).permit(:name, :img_url, :release_date, :price, :featured, :photo_url, :tags)
  end

end
