class ListItemsController < ApplicationController


 def index 
    list_items = ListItems.all
    render json: list_items
end 

def create
listitem = ListItems.create(listitems_params)
render json: listitem, except: [:created_at, :updated_at]
end 


private
def listitems_params
    params.require(list_item).permit(:user_id, :name)
end

end
