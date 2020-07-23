class Teacher < ActiveRecord::Base

    def tenure
        years_of_experience > 5
    end
end