name = "foo"
puts name


name = <<EOF
foo
bar 
bim
EOF

puts name

BEGIN {
  puts "<<BEGIN>>"
}

END {
  puts "<<END>>"
}

name = "pako"
puts "name = #{name}"
puts "name = "+ name


class Person
  def initialize(id, name, age, wage, active)
    @id = id
    @name = name
    @age = age
    @wage = wage
    @active = active
  end

  def setId(id)
    @id = id
  end

  def setName(name)
    @name = name
  end

  def setAge(age)
    @age = age
  end

  def setWage(wage)
    @wage = wage
  end

  def setActive(active)
    @active = active
  end

  def getId()
    return @id
  end

  def getName()
    return @name
  end

  def getAge()
    return @age
  end

  def getWage()
    return @wage
  end

  def isActive()
    return @active
  end

  def toString()
    str = <<EOF
id = #@id 
name = #@name 
age = #@age 
wage = #@wage 
active = #@active
EOF

    return str
  end

end



p1 = Person.new(1, "foo", 10, 100.0, true)
p2 = Person.new(2, "bar", 20, 200.0, false)

puts p1.toString
puts p2.toString


p1.setName "new foo"
p1.setAge 66
p1.setWage 666.666

puts "<<Person 1 details>>"
puts "id = #{p1.getId}"
puts "name = #{p1.getName}"
puts "age = #{p1.getAge}"
puts "wage = #{p1.getWage}"
puts "active = #{p1.isActive}"



# array
puts "<<Array Example>>"
arr = [1, "foo", 10, 100.0, true]
arr.each do |el|
  puts el
end

# hash
puts "<<Hash Example>>"
hash = {"foo"=> 10 , "bar"=> 20 , "bim"=> 30}
hash.each do |k,v|
  puts "#{k} => #{v}"
end


# semi closed range
puts "<<Semi-closed range>>"
(10...15).each do |el|
  print el , " "
end

puts ""

# fully closed range
puts "<<Fully Closed range>>"
(10..15).each do |el|
  print el , " "
end
puts ""


people = [
    Person.new(1, "foo", 10 , 100.0, true),
    Person.new(2, "bar", 20, 200.0, false),
    Person.new(3, "bim", 30, 300.0, true)
 ]

puts "<<All people>>"
people.each do |person|
  puts person.toString
  puts ""
end


peopleHash = {
    1 => Person.new(1, "foo", 10, 100.0, true),
    2 => Person.new(2, "bar", 20, 200.0, false),
    3 => Person.new(3, "bim", 30, 300.0, true)
}

puts "<<All People Hash>>"
peopleHash.each do |index, person|
  puts "#{index} => #{person.toString}\n"
end





