require "spec_helper"
require "rails_helper"


RSpec.describe Restaurant, :type => :model do
  subject { described_class.new }

  it "is not valid without a name" do 
    expect(subject).to_not be_valid

  end

  it "is not valid without an address" do 
    expect(subject).to_not be_valid
  end

end
