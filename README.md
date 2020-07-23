# AR-Environment-Skeleton

You can use this repo to build new Activerecord projects

* You will need to create your own app/models directories


Which method(s) does Active Record create for you?
Active Record was able to grab all the attribute information by name. So I didn't have to create
any attr_accessors or custom make any reader/writers. Using the .attribute name after the variable 
returned the information (i.e. grade_level).  Also, using Student.all worked without needing to create a method by hand.



Which method(s) did you have to create yourself? Why? 
I had to create the #full_name, #tenure, and the class method all_in_grade. I needed to combine the first_name & last_name to get full_name. For tenure I needed to have a condition set with checked if the experience was > 5 to return true, and the 
all_in_grade I just did a select to interate through all the Student instances to grab only the ones that matched the condition 
that was being passed in as an arg.

