class Entry < ActiveRecord::Base
  after_create :email_entry
  
  def email_entry
    EntryMailer.deliver_entry(self)
  end

end
