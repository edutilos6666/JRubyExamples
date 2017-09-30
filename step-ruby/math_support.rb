class ComplexNumber
  def initialize(re =0, im = 0)
    @re, @im = re, im
  end

  def set_re(re)
    self.instance_variable_set(:@re, re)
  end

  def set_im(im)
    self.instance_variable_set(:@im, im)
  end

  def get_re()
    self.instance_variable_get(:@re)
  end

  def get_im()
    self.instance_variable_get :@im
  end

  def add(other)
    res = ComplexNumber.new
    res.set_re @re + other.get_re
    res.set_im @im + other.get_im
    res
  end

  def sub(other)
    res = ComplexNumber.new
    res.set_re @re - other.get_re
    res.set_im  @im - other.get_im
    res
  end

  def mul(other)
    res = ComplexNumber.new
    res.set_re @re*other.get_re - @im* other.get_im
    res.set_im @re*other.get_im + @im* other.get_re
    res
  end

  def mul_by_factor(factor)
    res = ComplexNumber.new
    res.set_re @re*factor
    res.set_im @im*factor
    res
  end

  def div_by_factor(factor)
    res = ComplexNumber.new
    res.set_re @re / factor
    res.set_im @im / factor
    res
  end

  def div(other)
    factor = other.get_re ** 2 + other.get_im  ** 2
    temp1 = ComplexNumber.new other.get_re , -other.get_im
    res = self.mul(temp1)
    res = res.div_by_factor factor
  end

  def str()
    "#{@re} + i*(#{@im})"
  end



end