class TipsController < ApplicationController

  def index
    @game = Game.find(params[:id])
    @tip = @game.tip
  end

  def new
    @game = Game.find(params[:game_id])
    @tip = Tip.new
  end

  def create
    @game = Game.find_by_id(params[:game_id])
    @tip = current_user.tips.build(tip_params)

    if @tip.save
      redirect_to game_tip_path(@game, @tip)
    else
      render :new
    end
  end

  def show
    set_tip
    
    #if !@tip
    #  redirect_to new_game_tip_path(@game, @tip)
    #end
  end


  private

  def set_tip
    @tip = Tip.find(params[:id])
    @game = Game.find(params[:game_id])
  end

  def tip_params
    params.require(:tip).permit(:title, :comment, :price, :player_id, :game_id)
  end

end
