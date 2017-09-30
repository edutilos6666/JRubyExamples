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