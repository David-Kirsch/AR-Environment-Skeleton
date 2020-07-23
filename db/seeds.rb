Student.delete_all
Teacher.delete_all
GradeLevels.delete_all



smith = Teacher.create(last_name: "Smith", years_of_experience: 5) 
goldman = Teacher.create(last_name: "Goldman", years_of_experience: 8) 
green = Teacher.create(last_name: "Green", years_of_experience: 6) 



Student.create(first_name: "David", last_name: "Kirsch", grade_level: "first")
Student.create(first_name: "Cody", last_name: "DeMartin", grade_level: "first")
Student.create(first_name: "Ian", last_name: "Rosen", grade_level: "second")
Student.create(first_name: "Roy", last_name: "Flores", grade_level: "first")

GradeLevels.create(teacher_id: 1, student_id: 1)
GradeLevels.create(teacher_id: 2, student_id: 2)
GradeLevels.create(teacher_id: 3, student_id: 3)
GradeLevels.create(teacher_id: 1, student_id: 4)
GradeLevels.create(teacher_id: 2, student_id: 1)
