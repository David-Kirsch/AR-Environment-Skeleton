class Student < ActiveRecord::Base

    def full_name
        "#{first_name}  #{last_name}"
    end

    def self.all_in_grade(grade)
        Student.all.select do |student|
            student.grade_level == grade
        end
    end
end