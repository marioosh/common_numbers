module MagickNumbers

  class Regon 

    def initialize(num)
      @factory = if(/^\d{9}$/ =~ num)
                    Regon9.new num
                 elsif(/^\d{14}$/ =~ num)
                    Regon14.new num
                 else
                   nil
                 end

    end

    def valid?
      return @factory.valid? if @factory
      false
    end

  end

end
