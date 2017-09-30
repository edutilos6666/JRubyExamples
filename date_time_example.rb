require "java"
java_import java.time.LocalDate, java.time.LocalTime , java.time.LocalDateTime
java_import java.time.temporal.ChronoField
java_import java.util.Calendar

class DateTimeExample
  def test_LocalDate()
    ld1 , ld2 = nil, nil
    ld1 = LocalDate::now
    ld2 = LocalDate::of(2010, 10, 10)
    puts ld1.toString
    puts ld2.toString
    print_LocalDate ld1
    print_LocalDate ld2
  end

  def print_LocalDate(ld = LocalDate::now)
    year =  ld.get ChronoField::YEAR
    month = ld.get ChronoField::MONTH_OF_YEAR
    day = ld.get ChronoField::DAY_OF_MONTH
    puts "<<LocalDate>>"
    puts "year = #{year}"
    puts "month = #{month}"
    puts "day = #{day}"
    puts ""
  end



  def test_LocalTime
    lt1 , lt2 = nil , nil
    lt1 = LocalTime::now
    lt2 = LocalTime::of(10, 10, 10, 10)
    puts lt1.toString
    puts lt2.toString
    print_LocalTime lt1
    print_LocalTime lt2
  end

  def print_LocalTime(lt = LocalTime::now)
    hour = lt.get ChronoField::HOUR_OF_DAY
    minute = lt.get ChronoField::MINUTE_OF_HOUR
    second = lt.get ChronoField::SECOND_OF_MINUTE
    ms = lt.get ChronoField::MILLI_OF_SECOND
    puts "<<LocalTime>>"
    puts "hour = #{hour}"
    puts "minute = #{minute}"
    puts "second = #{second}"
    puts "ms = #{ms}"
    puts ""
  end


  def test_LocalDateTime
    ldt1, ldt2 = nil, nil
    ldt1 = LocalDateTime::now
    ldt2 = LocalDateTime::of 2010, 10, 10, 10, 10, 10, 10
    puts ldt1.toString
    puts ldt2.toString
    print_LocalDateTime ldt1
    print_LocalDateTime ldt2
  end

  def print_LocalDateTime(ldt = LocalDateTime::now)
    year =  ldt.get ChronoField::YEAR
    month = ldt.get ChronoField::MONTH_OF_YEAR
    day = ldt.get ChronoField::DAY_OF_MONTH
    hour = ldt.get ChronoField::HOUR_OF_DAY
    minute = ldt.get ChronoField::MINUTE_OF_HOUR
    second = ldt.get ChronoField::SECOND_OF_MINUTE
    ms = ldt.get ChronoField::MILLI_OF_SECOND
    puts "<<LocalDateTime>>"
    puts "year = #{year}"
    puts "month = #{month}"
    puts "day = #{day}"
    puts "hour = #{hour}"
    puts "minute = #{minute}"
    puts "second = #{second}"
    puts "ms = #{ms}"
    puts ""
  end


  def test_Calendar
    cl1 , cl2 = nil , nil
    cl1 = Calendar::getInstance
    cl2 = Calendar::getInstance
    cl2.set(2010, 10, 10,10 , 10, 10)
    puts "cl1 = #{cl1.getTime}"
    puts "cl2 = #{cl2.getTime}"
    cl1.add(Calendar::DATE, 10)
    puts "cl1 + 10 DATE = #{cl1.getTime}"
    cl1.add(Calendar::DATE , -5)
    puts "cl1 - 5 DATE = #{cl1.getTime}"
    cl1.add(Calendar::YEAR , 10)
    puts "cl1 + 10 YEAR = #{cl1.getTime}"
    cl1.add(Calendar::MONTH , -3)
    puts "cl1 - 3 MONTH = #{cl1.getTime}"
    print_Calendar cl1
    puts ""

  end

  def print_Calendar(cl = Calendar.getInstance)
    year, month , date , hour , minute , second , ms = nil , nil, nil, nil, nil, nil , nil
    year = cl.get Calendar::YEAR
    month = cl.get Calendar::MONTH
    date = cl.get Calendar::DATE
    hour = cl.get Calendar::HOUR
    minute = cl.get Calendar::MINUTE
    second = cl.get Calendar::SECOND
    ms = cl.get Calendar::MILLISECOND
    puts <<EOF
<<Calendar Infos>>
year = #{year}
month = #{month}
date = #{date}
hour = #{hour}
minute = #{minute}
second = #{second}
ms = #{ms}
EOF
  end


end