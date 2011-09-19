require File.expand_path(File.dirname(__FILE__)) + '/../spec_helper'

module RomanNumerals
  describe Converter do
    describe "convert" do
      it "should convert 1 to I" do
        converter = Converter.new
        numeral = converter.convert 1
        numeral.should == "I"
      end

      it "should convert 2 to II" do
        converter = Converter.new
        numeral = converter.convert 2
        numeral.should == "II"
      end

      it "should convert 3 to III" do
        converter = Converter.new
        numeral = converter.convert 3
        numeral.should == "III"
      end

      it "should convert 4 to IV" do
        converter = Converter.new
        numeral = converter.convert 4
        numeral.should == "IV"
      end

      it "should convert 5 to V" do
        converter = Converter.new
        numeral = converter.convert 5
        numeral.should == "V"
      end

      it "should convert 6 to VI" do
        converter = Converter.new
        numeral = converter.convert 6
        numeral.should == "VI"
      end

      it "should convert 10 to X" do
        converter = Converter.new
        numeral = converter.convert 10
        numeral.should == "X"
      end

      it "should convert 20 to XX" do
        converter = Converter.new
        numeral = converter.convert 20
        numeral.should == "XX"
      end

      it "should convert 30 to XXX" do
        converter = Converter.new
        numeral = converter.convert 30
        numeral.should == "XXX"
      end

      it "should convert 40 to XL" do
        converter = Converter.new
        numeral = converter.convert 40
        numeral.should == "XL"
      end

      it "should convert 50 to L" do
        converter = Converter.new
        numeral = converter.convert 50
        numeral.should == "L"
      end

      it "should convert 33 to XXXIII" do
        converter = Converter.new
        numeral = converter.convert 33
        numeral.should == "XXXIII"
      end

      it "should convert 99 to XCIX" do
        converter = Converter.new
        numeral = converter.convert 33
        numeral.should == "XXXIII"
      end

      it "should convert 1972 to MCMLXXII" do
        converter = Converter.new
        numeral = converter.convert 1972
        numeral.should == "MCMLXXII"
      end

      it "should raise an exception if number > 3999" do
        converter = Converter.new
        lambda { converter.convert 4000 }.should raise_error
      end

      it "should convert I to 1" do
        converter = Converter.new
        number = converter.convert "I"
        number.should == 1
      end

      it "should convert II to 2" do
        converter = Converter.new
        number = converter.convert "II"
        number.should == 2
      end

      it "should convert III to 3" do
        converter = Converter.new
        number = converter.convert "III"
        number.should == 3
      end

      it "should convert IV to 4" do
        converter = Converter.new
        number = converter.convert "IV"
        number.should == 4
      end

      it "should convert V to 5" do
        converter = Converter.new
        number = converter.convert "V"
        number.should == 5
      end

      it "should convert VI to 6" do
        converter = Converter.new
        number = converter.convert "VI"
        number.should == 6
      end

      it "should convert X to 10" do
        converter = Converter.new
        number = converter.convert "X"
        number.should == 10
      end

      it "should convert XX to 20" do
        converter = Converter.new
        number = converter.convert "X"
        number.should == 10
      end

      it "should convert XXX to 30" do
        converter = Converter.new
        number = converter.convert "X"
        number.should == 10
      end

      it "should convert XL to 40" do
        converter = Converter.new
        number = converter.convert "X"
        number.should == 10
      end

      it "should convert L to 50" do
        converter = Converter.new
        number = converter.convert "X"
        number.should == 10
      end

      it "should convert XCIX to 99" do
        converter = Converter.new
        number = converter.convert "XCIX"
        number.should == 99
      end

      it "should convert MCMLXXII to 1972" do
        converter = Converter.new
        number = converter.convert "MCMLXXII"
        number.should == 1972
      end
    end
  end
end
