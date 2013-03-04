require 'spec_helper'

describe Recipe do
  it { should have_many(:ingredients) }
  it { should belong_to(:category) }
  
  it "should be valid with some ingredients" do
    create(:recipe).should be_valid
  end
end
