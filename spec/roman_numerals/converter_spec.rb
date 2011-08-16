require File.expand_path(File.dirname(__FILE__)) + '/../spec_helper'

module RomanNumerals
  describe Converter do
    describe "convert" do
      it "should convert 1 to I" do
        converter = RomanNumerals::Converter.new
        numeral = converter.convert 1
        numeral.should == "I"
      end

      it "should convert 2 to II" do
        converter = RomanNumerals::Converter.new
        numeral = converter.convert 2
        numeral.should == "II"
      end

      it "should convert 3 to III" do
        converter = RomanNumerals::Converter.new
        numeral = converter.convert 3
        numeral.should == "III"
      end

      it "should convert 4 to IV" do
        converter = RomanNumerals::Converter.new
        numeral = converter.convert 4
        numeral.should == "IV"
      end
    end
  end
end
