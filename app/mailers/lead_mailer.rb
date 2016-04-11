class LeadMailer < ActionMailer::Base
  default from: "no-reply@andysgm.co.uk"

  def lead_email(lead)
  	@lead = lead
  	@url = url_for(controller: 'admin/dashboard', action:'index', :only_path => false, :host => "andysgm.co.uk")
  	mail(to: "busbyjon@gmail.com", subject: "New lead submitted")
  end
end
