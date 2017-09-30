require "java"
if !defined? JavaMath
  JavaMath = java.lang.Math
end
class ComplexNumberExample

  def example1()
    cn1, cn2 = nil , nil
    cn1 = ComplexNumber.new 3, 3
    cn2 = ComplexNumber.new 2, 2
    cn_add = cn1 + cn2
    cn_sub = cn1 - cn2
    cn_mul = cn1 * cn2
    cn_div = cn1 / cn2
    puts "cn1 = #{cn1.str}"
    puts "cn2 = #{cn2.str}"
    puts "cn1 + cn2 = #{cn_add.str}"
    puts "cn1 - cn2 = #{cn_sub.str}"
    puts "cn1 * cn2 = #{cn_mul.str}"
    puts "cn1 / cn2 = #{cn_div.str}"
    puts ""
  end

  class ComplexNumber
    def initialize(re = 0  , im = 0)
      @re , @im = re, im
    end

    def get_re
      @re
    end

    def get_im
      @im
    end

    def set_re(re)
      @re = re
    end

    def set_im(im)
      @im = im
    end

    def add(other)
      ret = ComplexNumber.new
      ret.set_re @re + other.get_re
      ret.set_im @im + other.get_im
      ret
    end

    def sub(other)
      ret = ComplexNumber.new
      ret.set_re @re - other.get_re
      ret.set_im @im - other.get_im
      ret
    end

    def mul(other)
      ret = ComplexNumber.new
      ret.set_re @re*other.get_re - @im*other.get_im
      ret.set_im @re*other.get_im + @im*other.get_re
      ret
    end

    def mul_by_factor(factor = 1.0)
      ret = ComplexNumber.new
      ret.set_re @re * factor
      ret.set_im @im * factor
      ret
    end

    def div_by_factor(factor = 1.0)
      ret = ComplexNumber.new
      ret.set_re @re / factor
      ret.set_im @im / factor
      ret
    end

    def div(other)
      factor = JavaMath.pow(other.get_re , 2) + JavaMath.pow(other.get_im, 2)
      temp = ComplexNumber.new other.get_re , -other.get_im
      ret =  self.mul temp
      ret = ret.div_by_factor factor
    end

    def +(other)
      self.add other
    end

    def -(other)
      self.sub other
    end

    def *(other)
      self.mul other
    end

    def /(other)
      self.div other
    end

    def str
      "#@re + i*(#@im)"
    end

  end
end
