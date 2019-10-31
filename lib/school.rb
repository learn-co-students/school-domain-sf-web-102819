class School

    attr_reader :name
    attr_accessor :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        # if @roster[grade]
        #     roster[grade] << name
        # elsif @roster[grade] = []
        #     @roster[grade] << name
        # end


        # if the roster does not contain the name
        if !@roster[grade]
            @roster[grade] = [name]
        # if the roster does contain the name
        else
            @roster[grade] << name
        end


        # # if the roster does have contain the key of grade
        # if !roster.has_key?(grade)
        #     # assign the value of the hash to an empty array
        #     roster[grade] = []
        # end
        # @roster[grade] << name
    end
        
    def grade(grade)
        @roster[grade]
    end

    def sort
        # puts @roster
        @roster.each do |grade, students_arr|
            students_arr.sort!
        end
    end
end

school = School.new("Bayside High School")


# puts school.roster
school.add_student("Homer Simpson", 9)
school.add_student("Bart Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)

# p school.roster

p school.sort