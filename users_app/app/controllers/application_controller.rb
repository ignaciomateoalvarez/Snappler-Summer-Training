class ApplicationController < ActionController::Base
    before_action :current_user 

    def current_user
        @current_user ||= User.second
    end
end
