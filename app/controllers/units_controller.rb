class UnitsController < ApplicationController
    before_action :require_signed_in!

    def new
        @unit = Unit.new(item_id: params[:item_id])
    end

    def show
        @unit = Unit.find_by(id: params[:id])
    end

    def create
        @unit = Unit.new(unit_params)
        if @unit.save
            redirect_to item_url(@unit.item_id)
        else
            flash.now[:errors] = @unit.errors.full_messages
            render :new
        end
    end

    def edit
        @unit = Unit.find(params[:id])
    end

    def update
        @unit = Unit.find(params[:id])
        if @unit.update(unit_params)
            redirect_to unit_url(@unit.id)
        else
            flash.now[:errors] = @unit.errors.full_messages
            render :edit
        end
    end    

    private
    def unit_params
        params.require(:unit).permit(:item_id, :notes, :serial_number)
    end
end
