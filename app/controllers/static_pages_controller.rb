class StaticPagesController < ApplicationController
  # You can also specify the layout at the top of your controller 
  # and it will apply that layout to all of the actions within that controller.
  # layout "static"

  # Initialise counter
  $redis.set('Page-Visit', '0')

  def landing_page
    # Count page visits
    @page_count = $redis.incr('Page-Visit')
    # Featured product.
    @featured_product = Product.last
    # First 3 products.
    @products = Product.limit(5)
    # Alternative to this is and is random :
    # @products = Product.take(5)
    # Or first 5 items
    # @products = Product.first(5)
    
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
