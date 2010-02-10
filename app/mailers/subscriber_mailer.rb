class SubscriberMailer < ActionMailer::Base
  
  def subscribed(subscriber)
    @recipients   = [subscriber.email]
    @subject      = "ScaleWell Newsletter Subscription"
    @from         = 'info@scalewell.com'
  end
  
  def new_subscriber(subscriber)
    @recipients   = ["admin@scalewell.com"]
    @subject      = "ScaleWell: #{subscriber.email} subscribed to the mailing list"
    @from         = 'system@scalewell.com'
    @body[:subscriber] = subscriber
  end
  
end