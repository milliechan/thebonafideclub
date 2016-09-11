class SessionsController < ApplicationController
  def create
    session[:id] = nil
    login(user)
    redirect_to '/'
  end

  def delete
    logout
    redirect_to '/'
  end


  protected
  def login(user)
    session[:id] = user.id
  end

  def logout
    session[:id] = nil
  end

end