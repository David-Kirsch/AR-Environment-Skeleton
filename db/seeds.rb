require 'pry'
Student.delete_all
Teacher.delete_all
GradeLevel.delete_all


smith = Teacher.create(last_name: "Smith", years_of_experience: 5) 
goldman = Teacher.create(last_name: "Goldman", years_of_experience: 8) 
green = Teacher.create(last_name: "Green", years_of_experience: 6) 



Student.create(first_name: "David", last_name: "Kirsch", grade_level: "first")
Student.create(first_name: "Cody", last_name: "DeMartin", grade_level: "first")
Student.create(first_name: "Ian", last_name: "Rosen", grade_level: "second")
Student.create(first_name: "Roy", last_name: "Flores", grade_level: "third")

GradeLevel.create(teacher_id: 1, student_id: 1)
GradeLevel.create(teacher_id: 2, student_id: 2)
GradeLevel.create(teacher_id: 3, student_id: 3)
GradeLevel.create(teacher_id: 1, student_id: 4)
GradeLevel.create(teacher_id: 2, student_id: 1)

binding.pry
0