class ApplicationController < ActionController::Base
    def logged_in?
        headers = request.headers['Authorization']
        token = headers.split(" ")[1]
        user_id = JWT.decode(token, "deez")[0]["user_id"]
        user = User.find(user_id)
        if user
            user
            # puts user.id
        else
            user = nil
        end
        render json: {error: "Please log in"} unless user
    end

end
