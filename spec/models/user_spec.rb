require 'rails_helper'



RSpec.describe User, type: :model do
  let(:user){User.new(name: "newuser", email: "newuser@user.com")}

  it "should instantiate a new user" do
    expect(user).to be_instance_of(User)
  end


end
