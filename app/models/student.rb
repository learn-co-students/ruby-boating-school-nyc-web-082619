class Student

    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end 

    def add_boating_test
        #should initialize a new boating test with a Student (Object), a boating test name (String), 
        #a boating test status (String), and an Instructor (Object)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def grade_percentage
        #return the percentage of tests that the student has passed, a Float (so if a student has 
        #passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
        total_tests = BoatingTest.all.map {|boatingtest|self.first_name == boatingtest.student}
        total = total_tests.length.to_f
        passed = BoatingTest.all.select {|boatingtest| self.first_name == boatingtest.student && boatingtest.test_status == "passed"}
        passed_t = passed.length.to_f
        percent = (passed_t / total)*100
    end

    def self.all
        @@all
    end 

    def self.find_student(name)
        #will take in a first name and output the student (Object) with that name
        self.all.find {|student| student.firat_name == name}
    end 

end
