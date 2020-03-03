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
      # player = Player.find(game_session_params[:player_ids]) if game_session_params[:player_ids]
      # @game_session.players << player
      @game_session.save
      redirect_to game_session_path(@game_session)
    else
      @errors = @game_session.errors.full_messages
      render :new
    end
  end

  def edit
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
