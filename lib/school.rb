# code here!
class School
    attr_reader :roster, :grade, :sort
    def initialize(name)
        @name = name
        @roster = Hash.new{|h,k| h[k] = []}   
    end
    def add_student(student, grade)
        # @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(g)
        @roster[g]
    end

    def sort
        new_hash = {}
        @roster.each do |key, value|
            new_hash[key] = value.sort
        end
        new_hash.sort_by(&:first).to_h
    end 
end

school = School.new("Bayside High School")
school.add_student("Kelly Kapowski", 10)
school.add_student("Jake", 9)
school.add_student("AC Slater", 9)
school.add_student("Screech", 11)
# puts school.roster
# puts school.grade(9)
puts school.sort
