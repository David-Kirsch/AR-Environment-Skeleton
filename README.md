# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories


Which method(s) does Active Record create for you?
    Active Record was able to grab all the attribute information by name. So I didn't have to create
    any attr_accessors or custom make any reader/writers. Using the .attribute name after the variable 
    returned the information (i.e. grade_level).  Also, using Student.all worked without needing to create a method by hand.



Which method(s) did you have to create yourself? Why? 
    I had to create the #full_name, #tenure, and the class method all_in_grade. I needed to combine the first_name & last_name to get full_name. For tenure I needed to have a condition set with checked if the experience was > 5 to return true, and the 
    all_in_grade I just did a select to interate through all the Student instances to grab only the ones that matched the condition that was being passed in as an arg.


- What changes did you make to your app? Why? 
I had to remove the teacher_id column in student table and remove the grade_level from teacher table. I did this because the teacher_id in the student table is no longer going to be the source of truth. The new source of truth will be contained in the new table grade_level. From there I added a grade_level table that would contain two columns (student_id, teacher_id). This allowed me to hold the association between both tables. Finally, I added the has_many on both student & teacher classes for grade_levels as well as has_many to the opposite tables (student/teacher), through: :grade_levels. I intentionally left out the grade column in grade_level table because I figured that if there is an association between a teacher and multiple students with all different grades, the you can pull the grade level from the student table that holds the grade. So if Timmy is in grade three and Smith is the teacher, you can find that Smith teaches third grade through Timmy.


EDIT:
Went back through and implimented the many-through method to pull from student record to see what grade(s) the teacher teaches. Made a method called #grades_taught.



