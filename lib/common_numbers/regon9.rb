module CommonNumbers

  class Regon9 < CommonNumbers::Base
    def initialize(num)
      super num
      @mask = [8, 9, 2, 3, 4, 5, 6, 7]
      @modulo = 11
      @regexp = /^\d{9}$/
      @length = 9

    end

  end

end
