class EntriesController < ApplicationController

  def index; end

  def new
    @entry = Entry.new
  end

  def create
    #@entry = Entry.create(params[:entry])
    #flash[:notice] = "Your application has been received.  Thanks!  We will update you on selection process within a month."
    flash[:notice] = "Entries are currently closed."
    redirect_to :action => :index
  end

end
