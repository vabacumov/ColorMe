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

  describe "/splashes/:id" do
    it "it renders a valid status" do
      get '/splashes/:id'
      expect(last_response.status).to eq(200)
    end
  end

  describe "/splashes/:id/delete" do
    it "it renders a valid status" do
      get '/splashes/:id/delete'
      expect(last_response.status).to eq(200)
    end
  end

  describe "/splashes/new" do
    it "it renders a valid status" do
      get '/splashes/new'
      expect(last_response.status).to eq(200)
    end
  end

end
