class LeadMailer < ActionMailer::Base
  default from: "no-reply@andysgm.co.uk"

  def lead_email(lead)
  	@lead = lead
  	@url = url_for(admin_root_path, :only_path => false)
  	mail(to: "busbyjon@gmail.com", subject: "New lead submitted")
  end
end
