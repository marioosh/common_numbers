require 'spec_helper'
require 'rspec'

describe "Nip"  do

  it "should be valid"do
    valid_numbers = %w[123-456-32-18 1234563218 123-45-63-218 PL123-456-32-18]
    valid_numbers.each do |n|
        nip = CommonNumbers::Polish::Nip.new(n)
        nip.should be_valid
    end
  end

  it "should be invalid" do
    invalid_numbers = %w[PL5912158688 PP5911158688 591-116-86-88 591-11-48-688 PL_591-115-86-88 PL591 591-11-58-6887]
    invalid_numbers.each do |n|
      nip = CommonNumbers::Polish::Nip.new(n)
      nip.should_not be_valid
    end
  end
end
