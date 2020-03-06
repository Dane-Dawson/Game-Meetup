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



  # def is_date_free?
  #   if GameSession.all.include?(date: @game_session.date)

  def create
    @game_session = GameSession.new(session_name: game_session_params[:session_name], game_id: game_session_params[:game_id], game_table_id: game_session_params[:game_table_id], date: game_session_params[:date], time: game_session_params[:time])
    if @game_session.game_sessions_in_date(game_session_params[:date]) && @game_session.game_session_on_table(game_session_params[:game_table])
      flash.alert = "That table is already taken"
      render :new
    else
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
   
    if !player_present? && is_table_space_available? 
      add_player
    else
      
    end
  end

  def destroy
    @game_session = GameSession.find(params[:id])
    @game_session.destroy
    redirect_to game_sessions_path 
  end

  def player_present?
    @game_session = GameSession.find(params[:id])
    player = Player.find(session[:player_id])
    @game_session.player_ids.include?(player.id)
  end

  def is_table_space_available?
    @game_session = GameSession.find(params[:id])
    @game_session.game_table.players.count < @game_session.game_table.seats_available
  end

  private

  def find_game_session
    @game_session = GameSession.find(params[:id])
  end

  def game_session_params
    pp @game_session
    params.require(:game_session).permit(:game_id, :game_table_id, :player_ids, :session_name, :date, :time)
  end
end
