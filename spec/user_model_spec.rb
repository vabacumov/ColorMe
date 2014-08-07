require_relative 'spec_helper'

describe User do
  describe "validations" do

    it "has an email" do
      should validate_presence_of(:email)
    end

    it "has an assigned color" do
      should validate_presence_of(:color)
    end

    it "has a unique email" do
      should validate_uniqueness_of(:email)
    end

    it "has a password with length between 4 and 20 characters " do
      should ensure_length_of(:password)
    end

    # it "should have a valid color" do
    #   should validate_format_of(:color)
    # end

    # it "should have a valid email" do
    #   should validate_format_of(:email)
    # end
  end
end
