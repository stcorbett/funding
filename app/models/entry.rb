class Entry < ActiveRecord::Base
  after_create :email_entry
  
  def email_trustee_app
    EntryMailer.deliver_entry(self)
  end

end
