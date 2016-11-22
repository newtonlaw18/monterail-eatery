require "spec_helper"
require "rails_helper"

describe Meal do
  subject { described_class.new }

  it "is not valid without a name" do 
    expect(subject).to_not be_valid

  end

  it "is not valid without an price" do 
    expect(subject).to_not be_valid
  end

end