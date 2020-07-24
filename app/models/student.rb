class Student < ActiveRecord::Base
    has_many :grade_levels
    has_many :teachers, through: :grade_levels
    has_many :student_extra_curs
    has_many :extra_curs, through: :student_extra_curs
    
    def full_name
        "#{first_name}  #{last_name}"
    end

    def self.all_in_grade(grade)
        Student.all.select do |student|
            student.grade_level == grade
        end
    end

    def self.with_extra_curs 
        self.all.select do |student|
            student.extra_curs 
        end
    end

    def get_sports
        self.extra_curs.select do |extra_cur|
            extra_cur.activity == "sport"
        end
    end

    def is_athlete?
        if self.get_sports == []
            false
        else
            true
        end
    end

    def self.athletes
        self.all.select do |student|
            student.is_athlete? == true 
        end 
    end 

    def get_competitive 
        self.extra_curs.select do |extra_cur|
            extra_cur.competitive == 1
        end
    end

    def competes?
        if self.get_competitive == []
            false 
        else 
            true 
        end 
    end 


    def self.competitors
        self.all.select do |student|
            student.competes? == true 
        end 
    end 

end