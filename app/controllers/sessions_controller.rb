class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:email])
    if !@user.nil? && !!@user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @user = User.new(email: params[:email])
      @error = true
      render "new"
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

end
