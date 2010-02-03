class TrusteesController < ApplicationController

  def index
    @trustee = Trustee.new
  end
  
  def create
    @trustee = Trustee.create(params[:trustee])
    flash[:notice] = "Thanks!  You should recieve an email with more information about the grant."
    redirect_to :action => :index
  end
  
  def success
    flash[:notice] = "Thanks for contributing to the future success of scaleable businesses!" if true
  end
  
  def give
  end

end
