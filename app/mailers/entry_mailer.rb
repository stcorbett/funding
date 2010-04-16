class EntryMailer < ActionMailer::Base
  
  def entry(entry)
    @recipients   = ["northwestern@scalewell.com"]
    @subject      = "Northwestern ScaleWell: #{entry.name} has submitted a grant application"
    @from         = 'system@scalewell.com'
    @body[:entry] = entry
  end
  
end