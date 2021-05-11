class FinanceItemsController < ApplicationController
    skip_before_action :verify_authenticity_token

def index 
    finance_item = FinanceItem.all
    render json: finance_item
end 

def create
finance_item = FinanceItem.create(finance_item_params)
render json: finance_item, except: [:created_at, :updated_at]
end 

def update 
    finance_item = FinanceItem.find(params[:id])
    finance_item.update(finance_item_params)
    render json: finance_item
end 

def destroy
    finance_item = FinanceItem.find(params[:id])
    finance_item.destroy
end 


private
def finance_item_params
    params.require(:finance_item).permit(:user_id, :name, :amount, :month)
end

end


