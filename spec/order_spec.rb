require "spec_helper"
require "rails_helper"

describe Order do
  subject { described_class.new }

  it "is not valid without a restaurant ID" do 
    expect(subject).to_not be_valid

  end

  it "is not valid without an user ID" do 
    expect(subject).to_not be_valid
  end

  it "is not valid without a meal" do 
    expect(subject).to_not be_valid

  end

  it "is not valid without an price" do 
    expect(subject).to_not be_valid
  end

  it "is not valid without a status" do 
    expect(subject).to_not be_valid

  end

  it "is not valid without an meal ID" do 
    expect(subject).to_not be_valid
  end

end