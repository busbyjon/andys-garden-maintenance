class LeadMailer < ActionMailer::Base
  default from: "no-reply@andysgm.co.uk"

  def lead_email(lead)
  	@lead = lead
  	@url = url_for(admin_root_path)
  	mail(to: "busbyjon@gmail.com", subject: "New lead submitted")
  end
end
