require 'mailgun'

class Email

	def send_mail(message)
		Mailgun.configure do |config|
		  config.api_key = 'key-52d8cafa4ac64768e16def3175469b59'
		  config.domain  = 'sandboxe3de37e7d98a4e5fbdceade0c8b1d2c9.mailgun.org'
		end

		@mailgun = Mailgun()

		# or alternatively:
		@mailgun = Mailgun(:api_key => 'key-52d8cafa4ac64768e16def3175469b59')

		parameters = {
		  :to => "daniel.fenjves@gmail.com",
		  :subject => "Your Daily Weiner Dog",
		  :html => message,
		  :from => "daniel.fenjves@gmail.com"
		}
		@mailgun.messages.send_email(parameters)

	end
end