class TrusteesController < ApplicationController

  before_filter :require_no_user, :only => [:new, :create]
  
  def index
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = "Thanks!  We will send information about the upcomming grants in the next few weeks."
      redirect_back_or_default account_url
    else
      render :action => :index
    end

  end
  
  def success
    flash[:notice] = "Thanks for contributing to the future success of scaleable businesses!" if true
  end
  
  def give
  end

end
