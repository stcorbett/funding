class EntryMailer < ActionMailer::Base
  
  def entry(entry)
    @recipients   = ["admin@scalewell.com"]
    @subject      = "ScaleWell: #{entry.name} has submitted a grant application"
    @from         = 'system@scalewell.com'
    @body[:entry] = entry
  end
  
end