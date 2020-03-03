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
    @game_session = GameSession.new(game_session_params)
    @game_session.save
    redirect_to game_session_path(@game_session)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def game_session_params
    params.require(:game_session).permit(:game_id, :game_table_id, :player_ids)
  end
end
