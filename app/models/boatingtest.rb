class BoatingTest
    attr_reader :student, :instructor, :name
    attr_accessor :test_status
    @@all = []

    def initialize(name, student, instructor, test_status='pending')
        @name = name
        @student = student
        @instructor = instructor
        @test_status = test_status

        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_test_by_name(name)
        self.all.find{|test| test.name == name}
    end

end
