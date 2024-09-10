select * from student;

select first_name, last_name from student;

select email from lecturer where id = 5;

select * from student where last_name = 'Silva';

select * from academic_semester where calendar_year = 2024;

select last_name, birth_date from student where birth_date >= '2003' order by last_name desc; 

select first_name, last_name, birth_date from student where year(birth_date) between 2006 and 2010;

select start_date, count(*) as num_students from student group by start_date;

select start_date, count(*) as num_students from student group by start_date having count(*) > 15;

select 
    lecturer.first_name, 
    lecturer.last_name, 
    academic_semester.calendar_year, 
    academic_semester.term, 
    count(*) as num_courses
from
    lecturer
join 
    course_edition on lecturer.id = course_edition.lecturer_id
join 
    academic_semester on academic_semester.id = course_edition.academic_semester_id
group by
    lecturer.first_name, 
    lecturer.last_name, 
    academic_semester.calendar_year, 
    academic_semester.term;

