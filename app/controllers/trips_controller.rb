class TripsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :logged_in?

 def index 
    trips = Trip.all
    render json: trips
end 

def create
trip = Trip.create(trip_params)
render json: trip, except: [:created_at, :updated_at]
end 


private
def trip_params
    params.require(:trip).permit(:user_id, :name, :date, :destination)
end

end
