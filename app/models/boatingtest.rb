class BoatingTest

attr_accessor :name, :student, :instructor, :status

@@all = []
def initialize(name, student, instructor, status)
    @name = name
    @student = student
    @instructor = instructor
    @status = status

    @@all << self
end

def self.all
    @@all
end

end
