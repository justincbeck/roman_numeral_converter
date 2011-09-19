class ConverterController < ApplicationController
  ONE = ["I", "V", "X"]
  TEN = ["X", "L", "C"]
  HUNDRED = ["C", "D", "M"]
  THOUSAND = ["M"]

  THE_MAP = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
  }

  def convert
    candidate = params[:candidate]
    arabic = candidate.to_s
    result = nil
    if /^\d+$/.match arabic
      if arabic.to_i > 3999
        raise Exception "Unsupported"
      end
      result = to_roman candidate
    elsif /^\w+$/.match arabic
      result = to_arabic candidate
    end
    render :json => { :result => result }
  end

  def to_arabic roman
    arabic = []

    segments = roman.upcase.split(//).collect { |s| THE_MAP[s] }
    segments.each do |s|
      if !arabic.last.nil? and arabic.last < s
        arabic[arabic.index(arabic.last)] = s - arabic.last
      else
        arabic << s
      end
    end

    total = 0
    arabic.each { |a| total += a }
    total
  end

  def to_roman arabic
    roman = []

    segments = arabic.to_s.split(//)
    segments.reverse!.each_index do |i|
      case 10**(i + 1)
        when 10
          roman << construct_segment(segments[i].to_i, ONE)
        when 100
          roman << construct_segment(segments[i].to_i, TEN)
        when 1000
          roman << construct_segment(segments[i].to_i, HUNDRED)
        when 10000
          roman << construct_segment(segments[i].to_i, THOUSAND)
      end

    end
    roman.reverse!.join
  end

  private

  def construct_segment segment, magnitude
    roman = ""

    if segment == 9
      roman += (magnitude[0] + magnitude[2])
    elsif segment > 5
      roman += magnitude[1]
      (segment - 5).times do
        roman += magnitude[0]
      end
    elsif segment == 5
      roman += magnitude[1]
    elsif segment == 4
      roman += (magnitude[0] + magnitude[1])
    else
      segment.times do
        roman += magnitude[0]
      end
    end

    roman
  end
end
