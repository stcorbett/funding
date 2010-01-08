class TrusteesController < ApplicationController

  def index
    @trustee = Trustee.new
  end
  
  def create
    @trustee = Trustee.create(params[:trustee])
    flash[:notice] = "Thanks!  You should recieve an email with more information about the grant."
    redirect_to :action => :index
  end

end
