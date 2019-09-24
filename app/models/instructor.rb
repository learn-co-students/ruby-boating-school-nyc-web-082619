class Instructor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, name)
    test_passed = BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.name == name}
     if test_passed
      test_passed.status= "passed"
      else
      BoatingTest.new(student, name, "passed", self)
      end
    end

    def fail_student(student, name)
        test_failed = BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.name == name}
    if test_failed
     test_failed.status= "failed"
     else
     BoatingTest.new(name, student, self, "failed")
     end
    end


end
