require 'rails_helper'

describe StaticPagesController, :type => :controller do
  
  # Checks the "index" action.
  context "GET #index" do
    before do
      get :index
    end

    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      expect(response).to render_template("index")
    end
  end

  # Checks the "landing_page" action.
  context "GET #landing_page" do
    before do
      get :landing_page
    end

    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the landing_page template" do
      expect(response).to render_template("landing_page")
    end
  end

  # Checks the "contact" action.
  context "GET #contact" do
    before do
      get :contact
    end

    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the contact template" do
      expect(response).to render_template("contact")
    end
  end

  # Checks the "about" action.
  context "GET #about" do
    before do
      get :about
    end

    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the about template" do
      expect(response).to render_template("about")
    end
  end

end

#TODO:
# Add other controller actions here.
# thank_you