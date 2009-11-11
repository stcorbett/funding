class EntriesController < ApplicationController

  def index; end

  def new
    @entry = Entry.new
  end

end
