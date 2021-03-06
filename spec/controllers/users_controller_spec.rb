require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    @user1 = FactoryGirl.create(:user)
    # @user1 = User.create!(email: "js1@example.com", password: "secret123")
    @user2 = User.create!(email: "js2@example.com", password: "secret123")
    
  end

  describe "GET #show" do
    context "User 1 is logged in" do
      before do
        sign_in @user1
      end

      it "loads correct user details of User 1" do
        # original
        #get :show, id: @user1.id
        # Change due to deprecation warning in Rails 5.
        get :show, params: { id: @user1.id }
        expect(response.status).to eq 200
        expect(assigns(:user)).to eq @user1
      end

      it "doesn't loads user details of User 2" do
        get :show, params: { id: @user2.id }
        expect(response.status).to eq 302
        expect(response).to redirect_to(root_path)
      end

    end

    context "No user is logged in" do
      it "redirects to login" do
        get :show, params: { id: @user1.id }
        expect(response).to redirect_to(root_path)
      end
    end

  end

end


# Notes:
# [ Can only be used outside of "context" and "it"]
# let(:user2) { User.create!(email: 'peter@example.com', password: '1234567890') }
# Usage: get :show, params: { id: user2.id }