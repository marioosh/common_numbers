module MagickNumbers
  
  class Base
    
    attr_accessor :magick_number, :regexp, :mask, :modulo

    def valid?
      validate
    end

    def validate
      validate_regexp && validate_length && validate_sum_control
    end

    def validate_regexp
        regexp =~ magick_number
    end

    def validate_sum_control
      magick_number.slice!(0..1) if international?
      nip = magick_number.split( "").collect &:to_i
      checksum = mask.inject(0) {|sum, weight| sum + weight * nip.shift}
      mod = checksum % modulo
      mod = 0 if mod == 10
      mod === nip.shift
    end
  end

end
