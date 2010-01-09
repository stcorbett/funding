class Trustee < ActiveRecord::Base
  after_create :email_trustee_app
  
  def email_trustee_app
    TrusteeMailer.deliver_trustee_app(self)
  end

  def self.li_links
    Trustee.all.collect{|t| t.li_link  }
  end
  
  def li_link
    %(%li
  = link_to "#{self.name}#{" (#{self.organization})" unless self.organization.blank?}", "#{self.url}"#{ %(
  = link_to "@#{self.twitter.gsub("@", "")}", "http://www.twitter.com/#{self.twitter}") unless self.twitter.blank?}
  )
  end

end