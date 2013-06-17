class ContactMeMessagesController < ApplicationController

	def new
    @contact_me_message = ContactMeMessage.new
    respond_to do |format|
      format.html 
      format.js 
    end
  end

	def create
		@contact_me_message = ContactMeMessage.new(params[:contact_me_message])
		respond_to do |format|
      if @contact_me_message.save
        format.html { redirect_to root_path, notice: 'Signed Up For Our Newsletter Successfully' }
        format.js 
      else
        format.html
        format.js
      end
    end
	end
end