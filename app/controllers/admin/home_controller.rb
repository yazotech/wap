class Admin::HomeController < Admin::AdminController
  def index
    check_auth
  end
  
  def check_auth
    if !session["login_user"]
      redirect_to '/login'
    end
  end
  
  def logout
    redirect_to :controller => '/login',  :action => 'logout'
  end
end