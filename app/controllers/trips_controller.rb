class TripsController < ApplicationController
    skip_before_action :verify_authenticity_token

 def index 
    trips = Trip.all
    render json: trips
end 

def create
trip = Trip.create(trip_params)
render json: trip, except: [:created_at, :updated_at]
end 

def update 
    trip = Trip.find(params[:id])
    trip.update(trip_params)
    render json: trip
end 

def destroy
    trip = Trip.find(params[:id])
    trip.destroy
end 



private
def trip_params
    params.require(:trip).permit(:user_id, :name, :date, :destination)
end

end
