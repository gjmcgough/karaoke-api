require 'rails_helper'

RSpec.describe Party, :type => :model do
  let(:party){Party.new(name: "newparty")}

  it "should instantiate a new party" do
    expect(party).to be_instance_of(Party)
  end
end
