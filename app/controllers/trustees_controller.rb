class TrusteesController < ApplicationController

  def index
  end
  
  def create
    @trustee = Trustee.create(params[:trustee])
  end

end
