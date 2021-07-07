class Instructor
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def pass_student(student,boatingTestName)
    
    findStudent = BoatingTest.all.find { |test| test.boatingTestName == boatingTestName and test.student == student }
    
    if findStudent
      findStudent.boatingTestStatus = "passed"
      findStudent
    else
      BoatingTest.new(student,boatingTestName,"passed",self)
    end
    
  end
  
  def fail_student(student,boatingTestName)
    
    findStudent = BoatingTest.all.find { |test| test.boatingTestName == boatingTestName and test.student == student }
    
    if findStudent
      findStudent.boatingTestStatus = "failed"
      findStudent
    else 
      BoatingTest.new(student,boatingTestName,"failed",self)
    end
    
  end
  
  def self.all 
    
    BoatingTest.all.map { |test| test.instructor }
    
  end
  
end #end of class 
