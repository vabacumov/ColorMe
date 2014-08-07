require_relative 'spec_helper'

describe "homepage routes" do
  describe "index route" do
    it "it renders a valid status" do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end



end
