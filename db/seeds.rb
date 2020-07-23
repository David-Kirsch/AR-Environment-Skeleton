Student.delete_all
Teacher.delete_all



smith = Teacher.create(last_name: "Smith", grade_level: "first", years_of_experience: 5) 
goldman = Teacher.create(last_name: "Goldman", grade_level: "second", years_of_experience: 8) 
green = Teacher.create(last_name: "Green", grade_level: "third", years_of_experience: 6) 



Student.create(first_name: "David", last_name: "Kirsch", grade_level: "first", teacher_id: 17)
Student.create(first_name: "Cody", last_name: "DeMartin", grade_level: "first", teacher_id: 18)
Student.create(first_name: "Ian", last_name: "Rosen", grade_level: "second", teacher_id: 19)
Student.create(first_name: "Roy", last_name: "Flores", grade_level: "first", teacher_id: 17)
