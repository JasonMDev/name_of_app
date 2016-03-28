if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key      => ENV['STRIPE_SECRET_KEY']
  }

else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_w7JVdBieUz3sFLbQtN1RS37R',
    :secret_key => 'sk_test_Q8kx9EUwiJ9BcS3VpXwoQZT1'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]