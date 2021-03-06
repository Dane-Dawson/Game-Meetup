class PlayersController < ApplicationController
  before_action :authorized, only: [:show]
  def index
    @players = Player.all 
  end


  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    if @player.valid?
      @player.save
      session[:player_id] = @player.id
      redirect_to @player
    else
      @errors = @player.errors.full_messages
      render :new
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @player = Player.find(params[:id])
    if @player.id = session[:player_id]
      session[:player_id] = nil
    end
    @player.destroy
    redirect_to players_path
  end

  def player_params
    params.require(:player).permit(:name, :bio, :age, :password, :password_confirmation)
  end
end
