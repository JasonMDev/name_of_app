require "rails_helper"

describe User, :type => :model do

  # let(:user) { User.new(first_name: "John", last_name: "Smith") }
  # let(:user) { User.new() }

  it "should not validate users without an email address" do
    # Overwrite factory email.
    @user = FactoryGirl.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end

  it "orders by last name" do
    lindeman = User.create!(first_name: "Andy", last_name: "Lindeman", email: "andy@example.com", password: "abcdefgh", password_confirmation: "abcdefgh")
    chelimsky = User.create!(first_name: "David", last_name: "Chelimsky", email: "david@example.com", password: "abcdefgh", password_confirmation: "abcdefgh")

    expect(User.all.order("last_name")).to eq([chelimsky, lindeman])
  end

end