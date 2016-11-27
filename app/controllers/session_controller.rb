class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
    else
      flash[:danger] = 'Inalid name/password combination'
      render "new"
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
