class EntriesController < ApplicationController

  def index; end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create(params[:entry])
    flash[:notice] = "Entry submitted.  You should recieve an email with further information about the application process."
    redirect_to :action => :index
  end

end
