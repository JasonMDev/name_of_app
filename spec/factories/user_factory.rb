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