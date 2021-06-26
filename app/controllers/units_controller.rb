class UnitsController < ApplicationController
    before_action :require_signed_in!

    def new
        @unit = Unit.new
    end

    def index
        @units = Unit.find_by(user_id: current_user.id)
    end

    def show
        @unit = Unit.find_by(id: params[:id])
    end

    def create
        @unit = Unit.new(unit_params)
        @unit.business_id = current_user.
        if @unit.save
            redirect_to business_url(@unit.business_id)
        else
            flash.now[:errors] = @unit.errors.full_messages
            render :new
        end
    end

    private
    def unit_params
        params.require(:item).permit(:business_id, :name, :description, :quantity)
    end
end
