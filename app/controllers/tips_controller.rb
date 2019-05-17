class TipsController < ApplicationController

  def index
    @game = Game.find(params[:id])
    @tip = @game.tip
  end

  def new
    @game = Game.find(params[:game_id])
    @tip = Tip.new
  end

end
