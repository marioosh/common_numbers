module MagickNumbers
  class Nip < MagickNumbers::Base

    def initialize(num)

      @mask = [ 6, 5, 7, 2, 3, 4, 5, 6, 7]
      @modulo = 11 
      @regexp = /^(PL)?[0-9]*/
      @magick_number = num.to_s.gsub('-', '')

    end



  def validate_length
    @magick_number.size == (international? ? 12 : 10)
  end
  
  def international?
    /^PL/ =~ @magick_number
  end



end

end
