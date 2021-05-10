class GoalsController < ApplicationController

 def index 
    goals = Goals.all
    render json: goals
end 

def create
goal = Goals.create(goal_params)
render json: goal, except: [:created_at, :updated_at]
end 


private
def goal_params
    params.require(:goal).permit(:user_id, :name, :start_date, :completion_date)
end

end
