require 'spec_helper'

describe ReservationsController do

  describe "GET 'toggle'" do
    it "returns http success" do
      get 'toggle'
      response.should be_success
    end
  end

end
