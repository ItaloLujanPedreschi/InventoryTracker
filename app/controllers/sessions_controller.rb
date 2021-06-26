class SessionsController < ApplicationController
    before_action :require_signed_out!, only: [:new, :create]
    before_action :require_signed_in!, only: [:destroy]

    def create
        @user = User.find_by_credentials(
            params[:user][:email],
            params[:user][:password]
        )

        if @user.nil?
            render json: ['Invalid email and/or password.'], status: 422
        else
            login!(@user)
            render :new
        end
    end

    def destroy
        logout!
        render json: { message: 'Logout successful.' }
    end
end
