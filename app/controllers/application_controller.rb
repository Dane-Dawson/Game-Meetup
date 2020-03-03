class ApplicationController < ActionController::Base
    helper_method :logged_in?, :current_player

    def current_player
        if session[:player_id]
            @player = Player.find(session[:player_id])
        end
    end

    def logged_in?
        !!current_player
    end

    def authorized
        redirect_to login_path unless logged_in?
    end

end
