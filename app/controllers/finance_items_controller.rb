class FinanceItemsController < ApplicationController
    before_action :logged_in?

def index 
    finance_item = FinanceItem.all
    render json: finance_item
end 

def create
finance_item = FinanceItem.create(finance_item_params)
render json: finance_item, except: [:created_at, :updated_at]
end 


private
def finance_item_params
    params.require(:finance_item).permit(:user_id, :name, :amount, :month)
end

end


