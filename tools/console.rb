require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")


first_test = BoatingTest.new(spongebob, "How to steer", "pending", puff)
second_test = BoatingTest.new(patrick, "How to tie a rope", "failed", krabs)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

