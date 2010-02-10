class Subscriber < ActiveRecord::Base
  after_create :email_subscription

  def email_subscription
    SubscriberMailer.deliver_subscribed(self)
    SubscriberMailer.deliver_new_subscriber(self)
  end

end
