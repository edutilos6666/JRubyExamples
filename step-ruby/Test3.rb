# function with default params
# default params must be preceded by normal params
def printProps(id , name = "foo", age = 10, wage = 100.0, active = true)
  puts "<<printProps>>"
  puts <<EOF
id = #{id}
name = #{name}
age = #{age}
wage = #{wage}
active = #{active}

EOF
end


printProps(id = 1, age = 20)
printProps(1, "bar", 30, 300.0, false)



# multiple returns
def generateData()
  return 1, "foo", 10, 100.0, true
end

puts "<<Multiple Return>>"
id , name, age , wage, active = generateData
puts <<EOF
id = #{id}
name = #{name}
age = #{age}
wage = #{wage}
active = #{active}
EOF



# vararg
puts "<<Vararg example>>"
def doubleStatistics(*numbers)
  sum , avg , min , max = 0, 0, 0, 0
  min = numbers[0]
  max = numbers[0]
  numbers.each do |n|
    sum += n
    if min > n
      min = n
    end

    if max < n
      max = n
    end
  end

  avg = sum  / numbers.length
  return sum , avg , min , max
end


sum , avg, min , max = doubleStatistics(10, 20, 30, 40, 50, 60)
puts <<EOF
sum = #{sum}
avg = #{avg}
min = #{min}
max = #{max}
EOF




# include another file
require "./math_support"
cn1 , cn2 = ComplexNumber.new(3, 3), ComplexNumber.new(2, 2)
cn_add = cn1.add cn2
cn_sub = cn1.sub cn2
cn_mul = cn1.mul cn2
cn_div = cn1.div cn2
puts "cn1 = #{cn1.str}"
puts "cn2 = #{cn2.str}"
puts "cn1 + cn2 = #{cn_add.str}"
puts "cn1 - cn2 = #{cn_sub.str}"
puts "cn1 * cn2 = #{cn_mul.str}"
puts "cn1 / cn2 = #{cn_div.str}"





require "./interface_example"
cf1 , cf2 , cf3, cf4 = nil , nil, nil, nil
cf1 = CustomFile.new "foo.read"
cf2 = CustomFile.new "foo.write"
cf3 = CustomFile.new "foo.exe"
cf4 = CustomFile.new "foo.read.write.exe"
puts "<<Infos on #{cf1.get_filename}>>"
puts "#{cf1.get_filename} is readable = #{cf1.is_readable}"
puts "#{cf1.get_filename} is writable = #{cf1.is_writable}"
puts "#{cf1.get_filename} is executable = #{cf1.is_executable}"
cf1.read
cf1.write
cf1.execute
puts ""
puts "<<Infos on #{cf2.get_filename}>>"
puts "#{cf2.get_filename} is readable = #{cf2.is_readable}"
puts "#{cf2.get_filename} is writable = #{cf2.is_writable}"
puts "#{cf2.get_filename} is executable = #{cf2.is_executable}"
cf2.read
cf2.write
cf2.execute
puts ""

puts "<<Infos on #{cf3.get_filename}>>"
puts "#{cf3.get_filename} is readable = #{cf3.is_readable}"
puts "#{cf3.get_filename} is writable = #{cf3.is_writable}"
puts "#{cf3.get_filename} is executable = #{cf3.is_executable}"
cf3.read
cf3.write
cf3.execute
puts ""
puts "<<Infos on #{cf4.get_filename}>>"
puts "#{cf4.get_filename} is readable = #{cf4.is_readable}"
puts "#{cf4.get_filename} is writable = #{cf4.is_writable}"
puts "#{cf4.get_filename} is executable = #{cf4.is_executable}"
cf4.read
cf4.write
cf4.execute
puts ""

