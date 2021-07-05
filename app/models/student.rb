require 'pry'
class Student

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_student(student_name)
        BoatingTest.all.select{ |test| test.student.name == student_name}
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def grade_percentage 
        me = BoatingTest.all.select{ |test| test.student == self}
        passed =  me.select{ |test| test.test_status == "passed"}.length
        failed =  me.select{ |test| test.test_status == "failed"}.length
        total = passed + failed
        answer = passed.to_f / total.to_f
        answer * 100
    end

end
