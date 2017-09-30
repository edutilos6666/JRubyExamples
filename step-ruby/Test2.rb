def add(x, y)
  return x + y
end

def sub(x, y)
  return x - y
end

def mul(x, y)
  return x * y
end

def div(x, y)
  return x / y
end


x , y = 10.0, 3.0
_add = add(x, y)
_sub = sub x, y
_mul = mul x , y
_div = div x , y

puts "<<Arithmetic Ops>>"
puts "#{x} + #{y} = #{_add}"
puts "#{x} - #{y} = #{_sub}"
puts "#{x} * #{y} = #{_mul}"
puts "#{x} / #{y} = #{_div}"



class SimpleMath
  def initialize(x, y)
    @x , @y = x , y
  end

  def add()
    return @x + @y
  end

  def sub()
    return @x - @y
  end

  def mul()
    return @x * @y
  end

  def div()
    return @x / @y
  end
end


x, y = 10.0, 3.0
sm = SimpleMath.new(x, y)
puts "<<SimpleMath>>"
puts "#{x} + #{y} = #{sm.add}"
puts "#{x} - #{y} = #{sm.sub}"
puts "#{x} * #{y} = #{sm.mul}"
puts "#{x} / #{y} = #{sm.div}"


class ArithmeticOps
  def initialize

  end

  def add(x, y)
    return x + y
  end

  def sub(x, y)
    return x - y
  end

  def mul(x, y)
    return x * y
  end

  def div(x, y)
    return x / y
  end

  def mod(x, y)
    return x % y
  end

  def pow(x, y)
    return x ** y
  end

end



ops = ArithmeticOps.new
_add = ops.add(x, y)
_sub = ops.sub(x, y)
_mul = ops.mul(x, y)
_div = ops.div(x, y)
_mod = ops.mod(x, y)
_pow = ops.pow(x, y)

puts "<<ArithmeticOps>>"
puts "#{x} + #{y} = #{_add}"
puts "#{x} - #{y} = #{_sub}"
puts "#{x} * #{y} = #{_mul}"
puts "#{x} / #{y} = #{_div}"
puts "#{x} % #{y} = #{_mod}"
puts "#{x} ** #{y} = #{_pow}"



#comparison ops
class ComparisonOps
  def initialize(x, y)
    @x, @y = x , y
  end

  def eq()
    @x == @y
  end

  def ne()
    @x != @y
  end

  def gt()
    @x > @y
  end

  def ge()
    @x >= @y
  end

  def lt()
    @x < @y
  end

  def le()
    @x <= @y
  end
end


ops = ComparisonOps.new(x, y)
_eq = ops.eq
_ne = ops.ne
_gt = ops.gt
_ge = ops.ge
_lt = ops.lt
_le = ops.le

puts "<<Comarison Operators>>"
puts "#{x} == #{y} = #{_eq}"
puts "#{x} != #{y} = #{_ne}"
puts "#{x} > #{y} = #{_gt}"
puts "#{x} >= #{y} = #{_ge}"
puts "#{x} < #{y} = #{_lt}"
puts "#{x} <= #{y} = #{_le}"

age = 15
if age > 0 && age < 10
  puts "You are a kid."
elsif age >= 10 && age < 20
  puts "You are a teenager."
elsif age >= 20 && age < 40
  puts "You are an adult."
else
  puts "You are an elderly."
end


puts x <=> y  # 1
puts y <=> x  # -1

puts (defined? foo)
puts (defined? SimpleMath)
puts (defined? local)


# loop
n = 0
while n < 10
  puts "number = #{n}"
  n += 1
end
puts ""


n = 0
begin
  puts "number = #{n}"
  n += 1
end while n < 10
puts ""


n  = 0
for n in 0...10
  puts "number = #{n}"
end
puts



# case
age = 15
case age
  when 1...10
    puts "You are a kid."
  when 10...20
    puts "You are a teenager."
  when 20...50
    puts "You are an adult."
  else
    puts "You are an elderly."
end




puts "You are a kid" if age > 0 && age < 10
puts "You are a teenager" if age >= 10 && age < 20
puts "You are an adult" if age >= 20 && age < 50
puts "You are an elderly" if age >= 50 && age < 100

