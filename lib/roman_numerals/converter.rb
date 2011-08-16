module RomanNumerals
  class Converter
    def initialize

    end

    def convert candidate
      arabic = candidate.to_s
      if /^\d+$/.match arabic
        result = to_roman candidate
        puts result
        result
      elsif /^\w+$/.match arabic
        result = to_arabic candidate
        puts result
        result
      end
    end

    def to_arabic roman
      puts "Convert to Arabic"
    end

    def to_roman arabic
      segments = arabic.to_s.split(//)

      roman = ""

      segments.each do |segment|
        (1..segment.to_i).each do
          if roman.length < 3
            roman += "I"
          elsif roman.length == 3

          else
            raise Exception.new("Unsupported!")
          end
        end
      end

      roman
    end

    ROMAN_MAP = [
        1 => "I",
        5 => "V",
        10 => "X",
        50 => "L",
        100 => "C",
        500 => "D",
        1000 => "M"
    ]

  end
end