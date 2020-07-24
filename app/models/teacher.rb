class Teacher < ActiveRecord::Base
    has_many :grade_levels
    has_many :students, through: :grade_levels

    def tenure
        years_of_experience > 5
    end

    def relations
        GradeLevel.all.select do |record|
            if(record.teacher_id == self.id)
                record
            end
        end
    end

    def students_taught
        relations.map do |record|
            Student.find do |student|
                student.id == record.student_id
            end
        end
    end

    def grades_taught
        students_taught.map do |student|
            student.grade_level
        end.uniq
    end
end