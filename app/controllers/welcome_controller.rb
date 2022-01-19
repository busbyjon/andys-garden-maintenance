class WelcomeController < ApplicationController

  def index
  	@lead = Lead.new
    @images = Image.all
    @quotes = Quote.where("active = 't'")
    @form_setting = Setting.find_by name: 'Form_Enabled'
  end

  def imagefile 
      @image = Image.find(params[:id])
      style = params[:style] ? params[:style] : 'original'

      send_data @image.send(:imagefile).file_contents('original'),
        :filename => @image.imagefile_file_name,
        :type => @image.imagefile_content_type
  end

  def submit_lead
  	@lead = Lead.new(lead_params)

  	if @lead.save
  		LeadMailer.lead_email(@lead).deliver
  		redirect_to action: 'thank_you', :anchor => "contact-section"
  	else 
  		redirect_to action 'index'
  	end

  end

  def thank_you
      @images = Image.all
      @quotes = Quote.where("active = 't'")
  end

  private
	  def lead_params
	    params.require(:lead).permit(:name, :phone, :email, :query)
	  end
end
