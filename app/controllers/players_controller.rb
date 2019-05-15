class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to player_path(@player)
    else
      render :new
    end
  end

  def show
    @player = Player.find_by(id: params[:id])

    if !@player
      redirect_to players_path
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :team, :position)
  end
end
