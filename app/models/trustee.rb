class Trustee < ActiveRecord::Base
  after_create :email_trustee_app
  
  def email_trustee_app
    TrusteeMailer.deliver_trustee_app(self)
  end

end