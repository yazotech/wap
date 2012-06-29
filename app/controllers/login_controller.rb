class LoginController < ApplicationController
  def login
    if params[:username] && params[:password]
      if params[:username] == 'yz' && params[:password] == '303'
        session[:login_user] = 'yz'
        redirect_to '/admin'
      end
    end
  end
  def logout
    session[:login_user] = nil
    redirect_to :action => :login
  end
end
