class GameSessionsController < ApplicationController
  def index
    @game_sessions = GameSession.all
  end

  def show
    @game_session = GameSession.find(params[:id])
  end

  def new
    @game_session = GameSession.new 
  end

  def create
    @game_session = GameSession.new(session_name: game_session_params[:session_name], game_id: game_session_params[:game_id], game_table_id: game_session_params[:game_table_id])

    if @game_session.valid?
      @game_session.save
      player = Player.find(session[:player_id])
      @game_session.players << player
      @game_session.save
      redirect_to @game_session
    else
      @errors = @game_session.errors.full_messages
      render :new
    end
  end

  def add_player
    @game_session = GameSession.find(params[:id])
    player = Player.find(session[:player_id])
    @game_session.players << player
    @game_session.save
    redirect_to @game_session
  end
  
  def edit
    @game_session = GameSession.find(params[:id])
  end

  def update
  end

  def destroy
    @game_session = GameSession.find(params[:id])
    @game_session.destroy
    redirect_to game_sessions_path 
  end

  private

  def game_session_params
    params.require(:game_session).permit(:game_id, :game_table_id, :player_ids, :session_name)
  end
end
