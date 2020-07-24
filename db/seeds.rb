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

ExtraCur.create(name:"Drama", activity: "club", competitive: 0)
ExtraCur.create(name:"Lacrosse", activity: "sport", competitive: 1)
ExtraCur.create(name:"Mock Trial", activity: "club", competitive: 1)
ExtraCur.create(name:"Debate", activity: "club", competitive: 1)
ExtraCur.create(name:"Basketball", activity: "sport", competitive: 1)

StudentExtraCur.create(student_id: Student.all[0].id, extra_cur_id: ExtraCur.all[0].id)
StudentExtraCur.create(student_id: Student.all[1].id, extra_cur_id: ExtraCur.all[1].id)
StudentExtraCur.create(student_id: Student.all[2].id, extra_cur_id: ExtraCur.all[2].id)
StudentExtraCur.create(student_id: Student.all[3].id, extra_cur_id: ExtraCur.all[3].id)
StudentExtraCur.create(student_id: Student.all[0].id, extra_cur_id: ExtraCur.all[2].id)



binding.pry
0