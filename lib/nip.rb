module MagickNumbers
  class Nip
    MASK = [ 6, 5, 7, 2, 3, 4, 5, 6, 7]
    MODULO = 11 
    REGEXP = /^(PL)?[0-9]*/

    def initialize(number)
      @number = number.to_s.gsub('-', '')
    end

    def valid?
      validate
    end

private 
  def validate
    validate_regexp && validate_length && validate_sum_control
  end

  def validate_regexp
      REGEXP =~ @number
  end

  def validate_length
    @number.size == (international? ? 12 : 10)
  end
  
  def international?
    /^PL/ =~ @number
  end

  def validate_sum_control
    @number.slice!(0..1) if international?
    nip = @number.split( "").collect &:to_i
    checksum = MASK.inject(0) {|sum, weight| sum + weight * nip.shift}
    checksum % MODULO === nip.shift
  end


end

end
