class SessionsController < ApplicationController
  def new
  end

  def create
    @player = Player.find_by(name: params[:name])
    if @player && @player.authenticate(params[:password])
      session[:player_id] = @player.id
      redirect_to @player
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:player_id] = nil
    redirect_to login_path
  end
end
