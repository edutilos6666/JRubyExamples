require "./date_time_example"
require "./java_math_example"
require "./java_file_io_example"
require "./java_swing_example"
require "./complex_number_example"
require "./inheritance_example"
require "./dao_example"
require "./interface_example"

def test_DateTimeExample()
  runner = DateTimeExample.new
  # runner.test_LocalDate
  # runner.test_LocalTime
  # runner.test_LocalDateTime
  runner.test_Calendar
end

def test_JavaMathExample
  runner = JavaMathExample.new
  runner.example1
end


def test_JavaFileIOExample
  runner = JavaFileIOExample.new
  runner.example1
end


def test_JavaSwingExample
  runner = JavaSwingExample.new
  runner.example1
end


def test_ComplexNumberExample
  runner = ComplexNumberExample.new
  runner.example1
end


def test_InheritanceExample
  runner = InheritanceExample.new
  runner.example1
end

def test_DAOExample
  runner = DAOExample.new
  runner.example1
end

def test_InterfaceExample
  runner = InterfaceExample.new
  runner.example1
end


def main()
  # test_DateTimeExample
  # test_JavaMathExample
  # test_JavaFileIOExample
  # test_JavaSwingExample
  # test_ComplexNumberExample
  # test_InheritanceExample
  # test_DAOExample
  test_InterfaceExample
end

main