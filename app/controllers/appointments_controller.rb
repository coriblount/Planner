class AppointmentsController < ApplicationController
# skip_before_action :verify_authenticity_token
before_action :logged_in?

def index 
    appt = Appointment.all
    render json: appt
end 

def create
appointment = Appointment.create(appointment_params)
render json: appointment, except: [:created_at, :updated_at]
end 

def update 
    appointment = Appointment.find(params[:id])
    appointment.update(appointment_params)
    render json: appointment
end 

def destroy
    appointment = Appointment.find(params[:id])
    appointment.destroy
end 


private
def appointment_params
    params.require(:appointment).permit(:user_id, :name, :date, :time)
end

end


