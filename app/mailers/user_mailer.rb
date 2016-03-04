class UserMailer < ApplicationMailer
	default from: "jasonmansdev@gmail.com"

	def contact_form(name, email, message)
		@message = message
		mail(:from => email, 
  		:to => 'jasonmansdev@gmail.com', 
  		:subject => "A new message contact form message from #{@name}")
	end

  def welcome(user)
    @appname = "Basingstoke Bike Shop"
    mail( :to => user.email,
          :subject => "Welcome to #{@appname}!")
  end
	
end
