class GoalsController < ApplicationController
skip_before_action :verify_authenticity_token

 def index 
    goals = Goal.all
    render json: goals
end 

def create
goal = Goal.create(goal_params)
render json: goal, except: [:created_at, :updated_at]
end 


private
def goal_params
    params.require(:goal).permit(:user_id, :name, :start, :completion)
end

end
