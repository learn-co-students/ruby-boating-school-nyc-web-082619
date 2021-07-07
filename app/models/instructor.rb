class Instructor
    attr_reader :name
    @@all = Array.new

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def pass_student(student, test_name)
        if test = BoatingTest.find_test_by_name(test_name)
            if test.student == student && test.instructor == self
                test.test_status = "passed"
            else 
                BoatingTest.new(test_name, student, self, "passed")
            end
        else BoatingTest.new(test_name, student, self, "passed")
        end
    end

    def fail_student(student, test_name)
        if test = BoatingTest.find_test_by_name(test_name)
            if test.student == student && test.instructor == self
                test.test_status = "failed"
            else 
                BoatingTest.new(test_name, student, self, "failed")
            end
        else BoatingTest.new(test_name, student, self, "failed")
        end
    end
end
