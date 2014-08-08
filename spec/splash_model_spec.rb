require_relative 'spec_helper'

describe Splash do
  describe "validations" do
    it "belongs to only one user" do
      should belong_to(:user)
    end
  end
end
