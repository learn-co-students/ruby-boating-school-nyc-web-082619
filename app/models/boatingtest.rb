class BoatingTest
  
  attr_accessor :student, :boatingTestName, :boatingTestStatus, :instructor
  @@all = []
  
  def initialize(student,boatingTestName,boatingTestStatus,instructor)
    @student = student
    @boatingTestName = boatingTestName
    @boatingTestStatus = boatingTestStatus
    @instructor = instructor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end
