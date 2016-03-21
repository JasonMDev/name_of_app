require 'rails_helper'

describe Product do 

  context "when the product has comments" do

    before do
      @product = Product.create!(name: "race bike")
      @user = User.create!(first_name: "John", 
                           last_name: "Smith", 
                           email: "js@example.com",
                           password: "password")
      @product.comments.create!(rating: 1, 
                              user: @user,
                              body: "Awful bike!")
      @product.comments.create!(rating: 3, 
                              user: @user,
                              body: "Okay bike!")
      @product.comments.create!(rating: 5, 
                              user: @user,
                              body: "Awesome bike!")

      end

      it "returns average rating of all comments" do
        expect(@product.average_rating).to eq 3
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