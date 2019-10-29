class School
    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        if  
            roster[student_grade]
            roster[student_grade] << student_name
        elsif
            roster[student_grade] = []
            roster[student_grade] << student_name
        end
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort()
        roster.each do |grade, student_name|
            student_name.sort!
        end
    end

end
