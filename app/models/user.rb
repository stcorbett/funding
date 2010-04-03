class User < ActiveRecord::Base
  acts_as_authentic 

  after_create :email_trustee_app
  
  private

  def email_trustee_app
    TrusteeMailer.deliver_trustee_app(self)
  end

end
