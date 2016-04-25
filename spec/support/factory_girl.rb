# RSpec
# spec/support/factory_girl.rb
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  # i added this.
  #FactoryGirl.find_definitions
end

# RSpec without Rails
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    FactoryGirl.find_definitions
  end
end

# Minitest
class Minitest::Unit::TestCase
  include FactoryGirl::Syntax::Methods
end

# Minitest::Spec
class Minitest::Spec
  include FactoryGirl::Syntax::Methods
end

# minitest-rails
class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
end