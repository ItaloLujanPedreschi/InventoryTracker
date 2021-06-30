class BusinessesController < ApplicationController
    before_action :require_signed_in!

    def show
        @business = Business.find_by(id: params[:id])
    end

    def new
        @business = Business.new
    end

    def create
        @business = Business.new(business_params)
        @business.user_id = current_user.id
        if @business.save
            redirect_to user_url(current_user)
        else
            flash.now[:errors] = @business.errors.full_messages
            redirect_to new_business_url
        end
    end

    def edit
        @business = Business.find(params[:id])
    end

    def update
        @business = Business.find(params[:id])
        if @business.update(business_params)
            redirect_to business_url(@business.id)
        else
            flash.now[:errors] = @business.errors.full_messages
            render :edit
        end
    end

    def destroy
        @business = Business.find_by(id: params[:id])
        @business.destroy
        redirect_to user_url(@business.user_id)
    end

    private
    def business_params
        params.require(:business).permit(:user_id, :name, :description)
    end
end
