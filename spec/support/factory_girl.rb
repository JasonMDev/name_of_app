# RSpec
# spec/support/factory_girl.rb
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  # i added this.
  #FactoryGirl.find_definitions
end