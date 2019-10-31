
class School
attr_accessor :roster, :add_student 
attr_reader :grade 
new = []
    
    def initialize(name)
        @name = name
        @roster = {}
       
    end
    
    def add_student(name,grade)
        roster[grade] ||= []
        roster[grade] << name 
    end    
    
    def grade(grade)
        return roster[grade]
    end

    def sort
        return roster.each_value{|v| v.sort!}
    end
end

