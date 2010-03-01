class Subscriber < ActiveRecord::Base
  after_create :email_subscription

  def email_subscription
    SubscriberMailer.deliver_subscribed(self)
    SubscriberMailer.deliver_new_subscriber(self)
  end
  
  def self.all_email_addresses
    str = ""
    Trustee.all.each{|t| str << "#{t.email}, " unless t.email.blank?}
    Entry.all.each{|e| str << "#{e.email}, " unless e.email.blank?}
    str.chomp(", ")
  end
  
end
