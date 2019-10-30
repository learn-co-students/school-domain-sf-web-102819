class School

  def initialize(roster)
    @roster = {}
  end

  def roster
    @roster
  end

  def length
    #cheat a little bit
    @roster.length
  end

  def add_student(val, key)
    if !@roster[key] #if roster doesn't have a value
      @roster[key] = [val]
    else
      @roster[key] << val
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |k, v|
      v.sort!
    end
    @roster.sort.to_h
  end
end