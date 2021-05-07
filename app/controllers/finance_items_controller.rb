class FinanceItemsController < ApplicationController

def index 
    finance_item = FinanceItem.all
    render json: finance_item
end 

end
