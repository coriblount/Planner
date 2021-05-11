class ListItemsController < ApplicationController
before_action :logged_in?

def index 
    list_items = ListItem.all
    render json: list_items
end 


def create
listitem = ListItem.create(listitems_params)
render json: listitem, except: [:created_at, :updated_at]
end 


private
def listitems_params
    params.require(:list_item).permit(:user_id, :name)
end

end
