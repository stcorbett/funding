class EntriesController < ApplicationController

  def index; end

  def new
    @entry = Entry.new
  end

  def create
    #@entry = Entry.create(params[:entry])
    flash[:notice] = "Entries are currently closed."
    redirect_to :action => :index
  end

end
