require 'spec_helper'
require 'rspec'

describe "Regon"  do

  it "should be valid"do
    valid_numbers = %w[192598184 123456785 12345678512347]
    valid_numbers.each do |n|
        regon = MagickNumbers::Regon.new(n)
        regon.should be_valid
    end
  end

  it "should be invalid" do
    invalid_numbers = %w[192598284 1925982843 19259828 123456786 12345638512347]
    invalid_numbers.each do |n|
      regon = MagickNumbers::Regon.new(n)
      regon.should_not be_valid
    end
  end
end
