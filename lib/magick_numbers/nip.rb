module MagickNumbers
  
  class Nip < MagickNumbers::Base

    def initialize(num)
      super(num)
      @mask = [ 6, 5, 7, 2, 3, 4, 5, 6, 7]
      @modulo = 11 
      @regexp = /^(PL)?[0-9]*/
      # @magick_number = num.to_s.gsub('-', '')

    end

    def validate_length
      @magick_number.size == (international? ? 12 : 10)
    end
    
    def international?
      /^PL/ =~ @magick_number
    end

    def validate_sum_control
      magick_number.slice!(0..1) if international?
      mod = checksum % modulo
      mod === magick_array.shift
    end

  end

end
