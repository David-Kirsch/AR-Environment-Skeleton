class ExtraCur < ActiveRecord::Base
    has_many :student_extra_curs
    has_many :students, through: :student_extra_curs




end