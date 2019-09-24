require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Student.new("Alan")
s2 = Student.new("Bob")
s3 = Student.new("Jenn")

i1 = Instructor.new("Instructor Jeff")
i2 = Instructor.new("Instructor Sean")
i3 = Instructor.new("Instructor Glenn")

bt1 = BoatingTest.new("test 1", s1, i1, "passed")
bt2 = BoatingTest.new("test 2", s2, i2, "failes")
bt3 = BoatingTest.new("test 3", s3, i3, "passed")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

