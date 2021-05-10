class ListItemsController < ApplicationController
skip_before_action :verify_authenticity_token

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
