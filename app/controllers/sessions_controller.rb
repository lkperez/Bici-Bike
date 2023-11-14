class SessionsController < ApplicationController
    def new 
    end

    def create
      @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          log_in(@user) 
          redirect_to root_path, notice: 'Login was successful!'
        else 
           flash.now[:alert] = 'Invalid username/password'
           render 'new'
        end
    end

    def destroy
      log_out(@user)
      redirect_to root_path, notice: 'Logged out'
    end
end
