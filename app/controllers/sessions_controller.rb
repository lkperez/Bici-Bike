class SessionController < ApplicationController
    def new 
    end

    def create
      logger.info("***")
        user = User.find_by(username: params[:sessions][:username])
        if user && user.password == params[:sessions][:password]
          log_in user
          redirect_to root_path
        else 
           flash.now[:danger] = 'Invalid username/password'
           render 'new'
        end
    end

    def destroy
      log_out
      redirect_to root_path
    end
end
