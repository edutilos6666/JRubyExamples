require "java"

if !defined? JavaMath
  JavaMath = java.lang.Math
end

class InheritanceExample
  def example1
    s1, s2 , s3 = nil, nil, nil
    s1 = Triangle.new 8, 9, 10
    s2 = Rectangle.new 10, 20
    s3 = Circle.new 10
    puts "<<infos on #{s1.str}>>"
    puts "perimeter = #{s1.perimeter}"
    puts "area = #{s1.area}"
    puts
    puts "<<infos on #{s2.str}>>"
    puts "perimeter = #{s2.perimeter}"
    puts "area = #{s2.area}"
    puts
    puts "<<infos on #{s3.str}>>"
    puts "perimeter = #{s3.perimeter}"
    puts "area = #{s3.area}"
    puts
  end

  class Shape
    def perimeter

    end

    def area

    end
  end


  class Triangle < Shape
    def initialize(a, b , c)
      @a = a
      @b = b
      @c = c
    end

    def perimeter
      @a + @b + @c
    end

    def area
      s = self.perimeter / 2
      JavaMath::sqrt(s*(s-@a)*(s-@b)*(s-@c))
    end


    def get_a
      @a
    end

    def get_b
      @b
    end

    def get_c
      @c
    end

    def set_a(a)
      @a = a
    end

    def set_b(b)
      @b = b
    end

    def set_c(c)
      @c = c
    end

    def str
      "Triangle(#@a,#@b,#@c)"
    end


  end


  class Rectangle < Shape
    def initialize(width , height)
      @width = width
      @height = height
    end

    def perimeter
      2*(@width + @height)
    end

    def area
      @width* @height
    end

    def get_width
      @width
    end
    def get_height
      @height
    end
    def set_width(width)
      @width = width
    end
    def set_height(height)
      @height = height
    end
    def str
      "Rectangle(#@width,#@height)"
    end

  end

  class Circle < Shape
    def initialize(r)
      @r = r
    end
    def perimeter
      2*JavaMath::PI*@r
    end
    def area
      JavaMath::PI*JavaMath::pow(@r , 2)
    end

    def get_r
      @r
    end
    def set_r(r)
      @r = r
    end
    def str
      "Circle(#@r)"
    end

  end


end