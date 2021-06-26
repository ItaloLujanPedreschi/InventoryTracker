class UsersController < ApplicationController
    before_action :require_signed_in!, only: [:show]
    before_action :require_signed_out!, only: [:new, :create]

    def new
        @user = User.new
        render :new
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    def create
        @user = User.new(user_params)

        if @user.save
            login!(@user)
            redirect_to user_url(current_user)
        else
            flash.now[:errors] = @user.errors.full_messages
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
