class WelcomeController < ApplicationController
  def index
  	@lead = Lead.new
  end

  def submit_lead
  	@lead = Lead.new(lead_params)

  	if @lead.save
  		redirect_to action: 'thank_you', :anchor => "contact-section"
  	else 
  		redirect_to action 'index'
  	end

  end

  def thank_you

  end

  private
	  def lead_params
	    params.require(:lead).permit(:name, :phone, :query)
	  end
end
