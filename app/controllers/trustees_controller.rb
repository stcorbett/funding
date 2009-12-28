class TrusteesController < ApplicationController

  def index
    @trustee = Trustee.new
  end
  
  def create
    @trustee = Trustee.create(params[:trustee])
    flash[:notice] = "Thanks!  We will email you."
    redirect_to :action => :index
  end

end
