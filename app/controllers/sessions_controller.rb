class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
  end

  def create
    session[:name] = params[:name]

    if session[:name] == nil
      redirect_to login_path()
    elsif session[:name].empty?
      redirect_to login_path()
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
