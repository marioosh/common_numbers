module MagickNumbers

  class Regon9 < MagickNumbers::Base
    def initialize(num)
      super num
      @mask = [8, 9, 2, 3, 4, 5, 6, 7]
      @modulo = 11
      @regexp = /^\d{9}$/
      @length = 9

    end


    def validate_sum_control
      mod = checksum % modulo
      mod = 0 if mod == 10
      mod === magick_array.shift
    end
  end

end
