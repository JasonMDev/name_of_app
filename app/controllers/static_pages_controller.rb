class StaticPagesController < ApplicationController
	# You can also specify the layout at the top of your controller 
	# and it will apply that layout to all of the actions within that controller.
	# layout "static"


	def landing_page
		@featured_product = Product.first
	end  

  def index
  end

  def about
  end

  def contact
  end
end
