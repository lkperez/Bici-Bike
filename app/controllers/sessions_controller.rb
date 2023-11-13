class SessionsController < ApplicationController
    def new 
    end

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
          log_in user
          #redirect_to root_path, notice: "Login was successful!"
          render turbo_stream: turbo_stream.visit(root_path)
        else 
           flash.now[:alert] = 'Invalid username/password'
           render 'new'
        end
    end

    def destroy
      #log_out
      #redirect_to root_path, notice: 'Logged out'
      log_out if logged_in?
      render turbo_stream: turbo_stream.visit(root_path)
    end
end
