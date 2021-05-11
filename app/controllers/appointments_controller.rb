class AppointmentsController < ApplicationController
before_action :logged_in?

def index 
    appt = Appointment.all
    render json: appt
end 

def create
appointment = Appointment.create(appointment_params)
render json: appointment, except: [:created_at, :updated_at]
end 


private
def appointment_params
    params.require(:appointment).permit(:user_id, :name, :date, :time)
end

end


