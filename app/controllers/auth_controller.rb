class AuthController < ApplicationController
    def login
        user = User.find_by(username: auth_param[:name])

        if user && user.authenticate(auth_param[:password])
            puts 'go'
            render json: {username: user.name, token: JWT.encode({user_id: user.id}, "deez")}
        else
            render json: {error: "Incorrect username or password"}
        end

    end

    def auth_param
        params.require(:auth).permit(:name, :password)
    end
end
