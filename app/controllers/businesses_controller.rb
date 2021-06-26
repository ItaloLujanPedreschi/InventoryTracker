class BusinessesController < ApplicationController
    before_action :require_signed_in!

    def new
        @business = Business.new
    end

    def index
        @businesses = Business.find_by(user_id: current_user.id)
    end

    def show
        @business = Business.find_by(id: params[:id])
    end

    def create
        @business = Business.new(business_params)
        @business.user_id = current_user.id
        if @business.save
            redirect_to user_url(current_user)
        else
            flash.now[:errors] = @business.errors.full_messages
            render :new
        end
    end

    private
    def business_params
        params.require(:business).permit(:user_id, :name, :description)
    end
end
