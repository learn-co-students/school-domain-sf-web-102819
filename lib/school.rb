# code here!
class School

    def initialize(name)
        @name = name
        @roster = Hash.new([])
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade] == []
            @roster[grade] = [name]
        else
            old = @roster[grade] 
            old << name
            @roster[grade] = old
        end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster = @roster.sort.to_h
        @roster = @roster.each do |k, v|
            @roster[k] = v.sort
        end

    end
end
