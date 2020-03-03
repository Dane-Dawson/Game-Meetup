class PlayersController < ApplicationController
  def index
    @players = Player.all 
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    
    if @player.valid?
      @player.save
      redirect_to player_path(@player)
    else
      @errors = @player.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_path
  end

  def player_params
    params.require(:player).permit(:name, :bio, :age)
  end
end
