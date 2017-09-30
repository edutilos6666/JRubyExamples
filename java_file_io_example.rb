require 'java'

java_import java.lang.Long , java.lang.Double, java.lang.Boolean

java_import java.util.ArrayList

if !defined? JavaString
  JavaString = java.lang.String  # ruby has String module
end
if !defined? JavaInteger
  JavaInteger = java.lang.Integer # ruby has Integer module
end

# star import
module JavaIO
  include_package "java.io"
end

class JavaFileIOExample
  # write and read into and from file
  def example1()
    # write into file
    begin
      filename =  "Workers.txt"
      writer = JavaIO::BufferedWriter.new JavaIO::FileWriter.new filename, false # no append
      workers = generate_data
      workers.each do |w|
        writer.write w.str
      end

      writer.close
    rescue java.lang.Exception => ex
      puts ex.message
    end


    # read from file
    begin
      filename = "Workers.txt"
      reader = JavaIO::BufferedReader.new JavaIO::FileReader.new filename
      workers = ArrayList.new
      line = reader.readLine
      while line != nil
        workers.add parse_line line
        line = reader.readLine
      end

      puts "<<All Workers>>"
      workers.each do |w|
        puts w.str
      end

    rescue java.lang.Exception => ex
      puts ex.message
    end


  end


  def parse_line(line)
    str = JavaString.new line
    splitted = str.split ","
    id = Long.parseLong splitted[0]
    name = splitted[1]
    age = JavaInteger.parseInt splitted[2]
    wage = Double.parseDouble splitted[3]
    active = Boolean.parseBoolean splitted[4]
    Worker.new id, name, age, wage, active
  end

  def generate_data
    [
        Worker.new(1, "foo", 10, 100.0, true),
        Worker.new(2, "bar", 20, 200.0, false),
        Worker.new(3, "bim", 30, 300.0, true)
    ]
  end


  class Worker
    def initialize(id, name, age, wage, active)
      @id = id
      @name = name
      @age = age
      @wage = wage
      @active = active
    end

    def get_id
      @id
    end

    def get_name
      @name
    end

    def ge_age
      @age
    end

    def get_wage
      @wage
    end

    def is_active
      @active
    end

    def set_id id
      @id = id
    end

    def set_name name
      @name = name
    end

    def set_age age
      @age = age
    end

    def set_wage wage
      @wage = wage
    end

    def set_active active
      @active = active
    end

    def str
      str = <<EOF
#@id,#@name,#@age,#@wage,#@active
EOF
    end
  end
end

