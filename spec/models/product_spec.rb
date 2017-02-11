require 'rails_helper'

describe Product do

  context "when the product has comments" do
    before do
      #here you put your code to generate test content
      @product = Product.create!(
        name: "Race Bike", 
        description: "Okay bike!",
        image_url: "bike_blue.jpg",
        color: "blue",
        location: "New York",
        price: "50")
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

  context "when product is created" do    
    before do 
      
      # Each product has full set to ensure that it test specific validation
      # Will try and replicate with factories later.

      # Valid Product
      @product_valid = Product.new(
        name: "blue bike", 
        description: "Okay bike",
        image_url: "bike_blue.jpg",
        color: "blue",
        location: "New York",
        price: "50")

      # Invalid product: no name
      @product_invalid_name = Product.new(
        name: "", 
        description: "Okay bike",
        image_url: "bike_blue.jpg",
        color: "blue",
        location: "New York",
        price: "50")

      # Invalid product: no description
      @product_invalid_description = Product.new(
        name: "Blue bike", 
        description: "",
        image_url: "bike_blue.jpg",
        color: "blue",
        location: "New York",
        price: "50")

      # Rest of parameters could be done the same.

    end

    # Test if valid product is valid
    it "should have valid fields" do
      expect(@product_valid).to be_valid
    end

    # Test if product name is present
    it "should have a name" do
      expect(@product_invalid_name).not_to be_valid
    end

    # Test if product description is present
    it "should have a description" do
      expect(@product_invalid_description).not_to be_valid
    end

    # Rest of parameters could be done the same.


  end 

end

# TODO
# Added validation for each parameter of product.