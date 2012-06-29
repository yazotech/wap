class Admin::AdminController < ActionController::Base
  layout 'admin'
  protect_from_forgery
  
  
  before_filter :check_auth
 
  def check_auth
    if !session["login_user"]
      redirect_to '/login'
    end
  end  
  
  
end
