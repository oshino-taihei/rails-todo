class SessionsController < ApplicationController
  skip_before_action :login_require

  def new
  end

  def create
    user = User.find_by(email: sessions_params[:email])
    if user&.authenticate(sessions_params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private

  def sessions_params
    params.require(:sessions).permit(:email, :password)
  end
end
