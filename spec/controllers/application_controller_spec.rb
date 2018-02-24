require 'rails_helper'

describe ApplicationController, :type => :controller do
  describe "GET 'root'" do
    it "returns http success" do
      get :index, locale: 'en'
      expect(response).to be_success
    end
  end

end
