class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grade_levels

    def full_name
        "#{first_name}  #{last_name}"
    end

    def self.all_in_grade(grade)
        Student.all.select do |student|
            student.grade_level == grade
        end
    end
end