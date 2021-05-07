class AppointmentsController < ApplicationController

def index 
    appt = Appointment.all
    render json: appt
end 

    
end
