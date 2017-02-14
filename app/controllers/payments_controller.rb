class PaymentsController < ApplicationController


  def create
    
    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here https://dashboard.stripe.com/account/apikeys
    # Stripe.api_key = "sk_test_Q8kx9EUwiJ9BcS3VpXwoQZT1"
    # 5555555555554444  MasterCard
    # 4000000000000119 processing error

    # Get the credit card details submitted by the form
    token = params[:stripeToken]
    @product = Product.find(params[:product_id])
    @user = current_user

    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => (@product.price*100).to_i, # amount in cents, again
        :currency => "gbp",
        :source => token,
        :description => params[:stripeEmail]
      )
      
      if charge.paid
        Order.create!(product_id: @product.id , user_id: @user.id, total: @product.price )
      end

      flash[:success] = "Payment processed successfully."


    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"

    end

    # Redirect back to the product page.
    # Note: if uncommented, it does not redirect to the "thank_you" page
    #redirect_to product_path(@product)
  end

end


