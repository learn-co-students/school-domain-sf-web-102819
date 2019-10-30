
class School
    def initialize(school)
        @school = school
        @roster = {}
    end 



    def roster
        @roster 
    end 

    def add_student(name, grade)
        
        if !roster.include?(grade)
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    
    

    def grade(grade)
        @roster[grade]
    end 

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end 
    end 

    
end 