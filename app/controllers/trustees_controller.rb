class TrusteesController < ApplicationController

  def index
    @trustee = Trustee.new
  end
  
  def create
    @trustee = Trustee.create(params[:trustee])
    flash[:notice] = "Thanks!  We will send information about the upcomming grants in the next few weeks."
    redirect_to :action => :index
  end
  
  def success
    flash[:notice] = "Thanks for contributing to the future success of scaleable businesses!" if true
  end
  
  def give
  end

end
