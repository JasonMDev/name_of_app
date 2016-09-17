FactoryGirl.define do
  # completes email below
  sequence(:email) { |n| "user#{n}@example.com"}


  # This will guess the User class 
  factory :user do
    first_name "Joe"
    last_name "Smoe"
    email 
    password "1234567890"   
    admin false
  end


  # This will use the User class (Admin would have been guessed)
  factory :admin, class: User do
    first_name "Admin"
    last_name "Smadmin"
    email 
    password "1234567890"   
    admin true
  end

end

# TODO
# https://github.com/plataformatec/devise/wiki/How-To:-Test-controllers-with-Rails-3-and-4-(and-RSpec)#controller-specs
# See how you can connect devise and factory girl to create users for normal or admin.