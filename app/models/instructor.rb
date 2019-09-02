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

    def pass_student(student, test_name)
        #If there is a BoatingTest whose 
        #name and student match the values passed in, this method should update the status of 
        #that BoatingTest to 'passed'. If there is no matching test, this method should create a 
        #test with the student, that boat test name, 
        #and the status 'passed'. Either way, it should return the BoatingTest instance.
        passed_test = BoatingTest.all.find {|boatingtest| boatingtest.student == student && boatingtest.test_name == test_name}
        if passed_test
            test_status = "passed"
        else 
            BoatingTest.new(student, test_name, test_status = "passed", self)
        end 
    end 
   

    def fail_student(student, test_name)
        failed_test = BoatingTest.all.find {|boatingtest| boatingtest.student == student && boatingtest.test_name == test_name}
        if failed_test
            test_status = "failed"
        else 
            BoatingTest.new(student, test_name, test_status = "feiled", self)
        end
    end 

end
