class CategoriesController < ApplicationController
  def index
    @featured_games = Game.where(featured: true)
    @categories = Category.all
    @quotesArrayOne = ["Video games and computers","Video games are bad for you?"]
    @quotesArrayTwo = ["have become babysitters for kids.","That's what they said about rock-n-roll."]
    @quotesArrayThree =  ["Taylor Kitsch","Shingeru Miamoto"]
    @i = 0
    @game = Game.find(params[:category_id])
    @category = Category.find(params[:game_id])
  end
end
