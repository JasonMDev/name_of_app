class StaticPagesController < ApplicationController
	# You can also specify the layout at the top of your controller 
	# and it will apply that layout to all of the actions within that controller.
	# layout "static"

  # Initialise counter
  $redis.set('Page-Visit', '0')

	def landing_page
		# Featured product.
		@featured_product = Product.last
		# First 3 products.
		@products = Product.limit(5)
    # Count page visits
    @page_count = $redis.incr('Page-Visit')
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
    UserMailer.contact_form(@name, @email, @message).deliver_now  	
  end

end
