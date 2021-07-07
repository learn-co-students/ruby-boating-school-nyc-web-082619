class Student
    attr_reader :first_name
    @@all = Array.new
    
    def initialize(first_name)
        @first_name = first_name
        
        @@all << self
    end

    def add_boating_test(name, instructor, test_status='not taken')
        BoatingTest.new(name, self, instructor, test_status)
    end

    def tests
        BoatingTest.all.select{|test| test.student == self}
    end
    
    def test_results
        self.tests.map{|test|test.test_status}
    end

    def grade_percentage
        (self.test_results.count("passed")/self.test_results.length.to_f) * 100
    end

    def self.all
        @@all
    end

    def self.find_student(first_name)
        self.all.find{|student| student.first_name == first_name.capitalize}
    end
end
