require "java"
# java_import java.lang.Math   # that collides with ruby's Math module

if !defined? JavaMath
  JavaMath = java.lang.Math
end

class JavaMathExample
  def example1
    number = 3.1
    ceil = JavaMath::ceil number
    floor = JavaMath::floor number
    round = JavaMath::round number
    abs = JavaMath::abs number
    min = JavaMath::min 10, 20
    max = JavaMath::max 10, 20
    angle = JavaMath::PI / 3
    sin = JavaMath::sin angle
    cos = JavaMath::cos angle
    tan = JavaMath::tan angle
    asin = JavaMath::asin sin
    acos = JavaMath::acos cos
    atan = JavaMath::atan tan
    puts <<EOF
ceil = #{ceil}
floor = #{floor}
round = #{round}
abs = #{abs}
min = #{min}
max = #{max}
sin = #{sin}
cos = #{cos}
tan = #{tan}
asin = #{asin}
acos = #{acos}
atan = #{atan}
EOF
  end
end