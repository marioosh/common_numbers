module MagickNumbers
  class Pesel < MagickNumbers::Base

    def initialize(num)
      super num
      @mask = [ 1, 3, 7, 9, 1, 3, 7, 9, 1, 3]
      @modulo = 10
      @regexp = /\d{11}/
      @length = 11
    end

    def validate_sum_control
      magick_array = magick_number.split( "").collect &:to_i
      checksum = mask.inject(0) {|sum, weight| sum + weight * magick_array.shift}
      mod = checksum % modulo
      mod = 10 - mod
      mod = 0 if mod == 10
      mod === magick_array.shift
    end
  end

end
