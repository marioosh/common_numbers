module MagickNumbers
  
  class Base
    
    attr_reader :magick_number, :regexp, :mask, :modulo, :length, :magick_array

    def initialize(num)
      @magick_number = num.to_s.gsub('-', '')
    end

    def valid?
      validate
    end

    def validate
      validate_regexp && validate_length && validate_sum_control
    end

    def validate_regexp
        regexp =~ magick_number
    end

    def validate_length
      magick_number.size == length
    end
    
    def checksum
      @magick_array = magick_number.split( "").collect &:to_i
      checksum = mask.inject(0) {|sum, weight| sum + weight * magick_array.shift}
    end
    
  end

end
