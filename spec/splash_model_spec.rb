require_relative 'spec_helper'

describe Splash do
  describe "validations" do
    it "belongs to only one user" do
      should belong_to(:user)
    end
  end

  describe "associations" do
    it "has an original_splash_id column" do
      should have_db_column(:original_splash_id)
    end
  end
end
