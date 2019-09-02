class Instructor

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def pass_student(student_inst, name_of_test)
        real = BoatingTest.all.select{ |test| test.student == student_inst && test.test_name == name_of_test}
        
        if real.empty?
            BoatingTest.new(student_inst, name_of_test, "passed", self) 
        else
            real[0].test_status = "passed"
            #binding.pry
        end
    end

    def fail_student(student_inst, name_of_test)
        real = BoatingTest.all.select{ |test| test.student == student_inst && test.test_name == name_of_test}
        
        if real.empty?
            BoatingTest.new(student_inst, name_of_test, "failed", self) 
        else
            real[0].test_status = "failed"
        end
    end
    
end
