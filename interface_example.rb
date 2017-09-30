class InterfaceExample
  def example1
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
  end



  require "./readable"
  require "./writable"
  require "./executable"
  class CustomFile
    include Readable, Writable , Executable
    def initialize(filename)
      @filename = filename
    end

    def set_filename(filename)
      self.instance_variable_set :@filename, filename
    end

    def get_filename()
      self.instance_variable_get :@filename
    end

    def is_readable()
      @filename.include? ".read"
    end

    def read()
      if is_readable
        puts "#@filename was read."
      else
        puts "#@filename is not readable."
      end
    end


    def is_writable()
      @filename.include? ".write"
    end

    def write()
      if is_writable
        puts "#@filename was written."
      else
        puts "#@filename is not writable."
      end
    end

    def is_executable()
      @filename.include? ".exe"
    end

    def execute()
      if is_executable
        puts "#@filename was executed."
      else
        puts "#@filename is executable."
      end
    end

    def str()
      @filename
    end

  end
end


