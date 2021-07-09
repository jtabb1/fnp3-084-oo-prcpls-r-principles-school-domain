# Some parts written with the assistance of the official solutions

class School
  attr_accessor :roster, :name

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end
  
  def sort
    Hash[ @roster.map{|ky,vu| [ky, vu.sort] } ]
  end
end
