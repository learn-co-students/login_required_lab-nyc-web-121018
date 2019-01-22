class SessionsController < ApplicationController


  def new

  end


  def create
    if !!params[:name] && params[:name].empty? == false
      session[:name] = params[:name]
      redirect_to '/'
    else

  end


  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
