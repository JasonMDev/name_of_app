class StaticPagesController < ApplicationController
	# You can also specify the layout at the top of your controller 
	# and it will apply that layout to all of the actions within that controller.
	# layout "static"


	def landing_page
		# Featured product.
		@featured_product = Product.last
		# First 3 products.
		@products = Product.limit(5)
	end  

  def index
  end

  def about
  end

  def contact
  end

  def thank_you
  	@name = params[:name]
  	@email = params[:email]
  	@message = params[:message]
  	ActionMailer::Base.mail(:from => @email, 
  		:to => 'jasonmansdev@gmail.com', 
  		:subject => "A new message contact form message from #{@name}", 
  		:body => @message).deliver_now
  end

end
