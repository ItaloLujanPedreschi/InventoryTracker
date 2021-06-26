class ItemsController < ApplicationController
    before_action :require_signed_in!

    def new
        debugger
        @item = Item.new(business_id: params[:business_id])
        debugger
    end

    def index
        @items = Item.find_by(user_id: current_user.id)
    end

    def show
        @item = Item.find_by(id: params[:id])
    end

    def create
        debugger
        @item = Item.new(item_params)
        debugger
        if @item.save!
            redirect_to business_url(@item.business_id)
        else
            flash.now[:errors] = @item.errors.full_messages
            render new_business_item_url(@item.business_id)
        end
    end

    private
    def item_params
        params.require(:item).permit(:business_id, :name, :description, :quantity)
    end
end
