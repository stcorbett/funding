class SubscribersController < ApplicationController
  
  def create
    @subscriber = Subscriber.create(params[:subscriber])
    flash[:notice] = "Thanks!  You will receive an email confirming your subscription."
    redirect_to :controller => :entries, :action => :index
  end

end
