class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      session[:member_id] = @member.id
      redirect_to root_path, notice: 'Account created successfully!'
    else
      render :new
    end
  end

  private

  def member_params
    params.require(:member).permit(:username, :email, :password, :password_confirmation)
  end
end
