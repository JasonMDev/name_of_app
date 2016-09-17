require 'rails_helper'

describe Product do

  context "when the product has comments" do
    before do
      #here you put your code to generate test content
      @product = Product.create!(name: "race bike")
      @user = User.create!(first_name: "John", last_name: "Smith", email: "js@example.com", password: "password")
      @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @product.comments.create!(rating: 3, user: @user, body: "Okay bike!")
      @product.comments.create!(rating: 5, user: @user, body: "Awesome bike!")
      end

      it "expects the product's average rating of all comments to be 3" do
        expect(@product.average_rating).to eq 3
      end

      it "expects to receive 3 comments on the product" do
        expect(@product.total_rating).to eq 3
      end
  end

  context "when product has no name" do    
    before do 
      @product = Product.new(description: "Okay bike")
    end

    it "is not a valid product" do
      expect(@product).not_to be_valid
    end
  end 

end

# TODO
# Added validation for each parameter of product.