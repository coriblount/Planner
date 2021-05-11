class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    # before_action :logged_in?

    def logged_in?
        puts 'logged_in? hit'
    end
end
