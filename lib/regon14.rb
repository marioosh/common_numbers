module MagickNumbers

  class Regon14 < MagickNumbers::Base
    def initialize(num)
      super num
      @mask = [2, 4, 8, 5, 0, 9, 7, 3, 6, 1, 2, 4, 8]
      @modulo = 11
      @regexp = /^\d{14}$/
      @length = 14
    end

    def validate_sum_control
      mod = checksum % modulo
      mod = 0 if mod == 10
      mod === magick_array.shift
    end

  end

end
