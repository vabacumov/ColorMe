require_relative 'spec_helper'

describe "routes" do
  describe "/index" do
    it "it renders a valid status" do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end

  describe "/users" do
    it "it renders a valid status" do
      get '/users'
      expect(last_response.status).to eq(200)
    end
  end

  describe "/users/new" do
    it "it renders a valid status" do
      get '/users/new'
      expect(last_response.status).to eq(200)
    end
  end

  describe "/users/:color" do
    it "it renders a valid status" do
      get '/users/:color'
      expect(last_response.status).to eq(200)
    end
  end

  describe "/users/edit" do
    it "it renders a valid status" do
      get '/users/edit'
      expect(last_response.status).to eq(200)
    end
  end

  describe "/splashes" do
    it "it renders a valid status" do
      get '/splashes'
      expect(last_response.status).to eq(200)
    end
  end

  describe "/users/:user_id/splashes/:id" do
    it "it renders a valid status" do
      get '/users/:user_id/splashes/:id'
      expect(last_response.status).to eq(200)
    end
  end

  describe "/users/:user_id/splashes/:id/delete" do
    it "it renders a valid status" do
      get '/users/:user_id/splashes/delete'
      expect(last_response.status).to eq(200)
    end
  end

  describe "/users/:user_id/splashes/new" do
    it "it renders a valid status" do
      get '/users/:user_id/splashes/new'
      expect(last_response.status).to eq(200)
    end
  end

end
