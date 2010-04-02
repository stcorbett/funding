class SubscribersController < ApplicationController
  
  def create
    @subscriber = Subscriber.create(params[:subscriber])
    flash[:notice] = "Thanks!  You will receive an email confirming your subscription."
    redirect_to :controller => :entries, :action => :index
  end
  
  def admin_list
    redirect_to home_path unless params[:whodat] == "izadminhere4299"
    @list = ''
    Trustee.all.each{|t| @list << %("#{t.name}" #{t.email}, ) unless t.email.blank?}
    Entry.all.each{|e| @list << %("#{e.name}" #{e.email},) unless e.email.blank?}
    @list.chomp(", ")
  end

end
