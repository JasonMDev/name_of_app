# RSpec
# spec/support/factory_girl.rb
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  # i added this.
  # Creates duplicate error
  # FactoryGirl.find_definitions
end

# Removed code from the below.