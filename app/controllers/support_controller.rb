class SupportController < ApplicationController
	def new
		
	end

	def create
		from_email = params[:email]
		message = params[:message]

		@errors = []

		@errors << 'Please enter your email' if from_email.blank?
		@errors << 'Please enter a message' if message.blank?

		if @errors.empty?
			SupportMailer.contact_support(from_email, message).deliver_now
			render :success
		else 
			render :new
		end
	end

	def success
	end
end
