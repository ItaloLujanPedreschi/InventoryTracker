class ItemsController < ApplicationController
    before_action :require_signed_in!

    def new
        @item = Item.new(business_id: params[:business_id])
    end

    def show
        @item = Item.find_by(id: params[:id])
    end

    def create
        @item = Item.new(item_params)
        if @item.save!
            redirect_to business_url(@item.business_id)
        else
            flash.now[:errors] = @item.errors.full_messages
            render new_business_item_url(@item.business_id)
        end
    end

    def edit
        @item = Item.find(params[:id])
    end

    def update
        @item = Item.find(params[:id])
        if @item.update(item_params)
            redirect_to item_url(@item.id)
        else
            flash.now[:errors] = @item.errors.full_messages
            render :edit
        end
    end

    private
    def item_params
        params.require(:item).permit(:business_id, :name, :description, :quantity)
    end
end
