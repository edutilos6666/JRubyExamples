=begin
# function with default params
def test1(p1 = "foo", p2 = 10)
  puts "p1 = #{p1}, p2 = #{p2}"
end


test1
test1("bar", p2 = 20)



# multiple returns
def test2
  return "foo", 10 , 100.0
end

name , age , wage = test2
print name , " ", age , " ", wage , "\n"


# varargs
def test3(*numbers)
  sum = 0
  numbers.each do |n|
    sum += n
  end
  return sum
end

puts "sum = #{test3(1, 2,3, 4)}"



# class Methods
class ComplexNumber
  def initialize(re, im)
    @re = re
    @im = im
  end

  def add(other)
    _re = @re + other.instance_variable_get(:@re)
    _im = @im + other.instance_variable_get(:@im)
    res = ComplexNumber.new(_re , _im)
    return res
  end

  def subtract(other)
    _re = @re - other.instance_variable_get(:@re)
    _im = @im - other.instance_variable_get(:@im)
    res = ComplexNumber.new(_re , _im)
    return res
  end

  def multiply(other)
    _re = @re*other.instance_variable_get(:@re) + @im*other.instance_variable_get(:@im)
    _im = @re*other.instance_variable_get(:@im) - @im*other.instance_variable_get(:@re)
    return ComplexNumber.new(_re, _im)
  end

  def to_s
    return "["+ @re.to_s + " , " + @im.to_s + "]"
  end
end


cn1 = ComplexNumber.new(1, 1)
cn2 = ComplexNumber.new(2, 2)

puts cn1.to_s
puts cn2.to_s
add = cn1.add(cn2)
subtract = cn1.subtract(cn2)
multiply = cn1.multiply(cn2)
puts "add = #{add}"
puts "subtract = #{subtract}"
puts "multiply = #{multiply}"



def print_props(name , age , wage)
  puts "#{name}, #{age}, #{wage}"
end

print_props("foo", 10 , 100.0)

alias pp print_props
pp("bar", 20 , 200.0)

undef print_props
# that does not work
# print_props("bim", 30 , 300.0)
# but that works
pp("bim", 30 , 300.0)




require_relative "ruby_worker.rb"
w = RubyWorker.new(1, "foo", 10 , 100.0, true)
puts w
w.instance_variable_set(:@id, 10)
puts w



# require "./math_support"
# or
$LOAD_PATH << "."
require "math_support"

# multiple includes are possible -> like mixins , or interface(but without implementation requirement)
class MathTest
  include MathSupport

  def test1()
    sm1 = SimpleMath.new(10, 3)
    puts "add = #{sm1.add}"
    puts "subtract = #{sm1.subtract}"
    puts "multiply = #{sm1.multiply}"
    puts "divide = #{sm1.divide}"
    puts "pow = #{sm1.pow}"
    puts "modulo = #{sm1.modulo}"
  end

  def test2()
    x , y = 10 , 3
    puts "add = #{add(x, y)}"
    puts "subtract = #{subtract(x, y)}"
    puts "multiply = #{multiply(x, y)}"
    puts "divide = #{divide(x, y)}"
    puts "pow = #{pow(x, y)}"
    puts "modulo = #{modulo(x,y)}"
  end


  def test3()
    cm1 = ComplexNumber.new(1, 1)
    cm2 = ComplexNumber.new(2, 2)
    puts "cm1 = #{cm1}"
    puts "cm2 = #{cm2}"
    puts "add = #{cm1.add(cm2)}"
    puts "subtract = #{cm1.subtract(cm2)}"
    puts "multiply = #{cm2.multiply(cm2)}"
  end
end



mt = MathTest.new
puts
mt.test1
puts
mt.test2
puts
mt.test3=end
