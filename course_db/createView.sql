create view simple_students as
select B.class_name, A.student_ID, A.name, A.sex
from students as A, classes as B
where A.class_ID = B.class_ID;

create view simple_teachers as
select B.dep_name, A.teacher_ID, A.name
from teachers as A, department as B
where A.dep_ID = B.dep_ID;

create view public_course as
select B.open_course_ID, C.course_ID, C.course_name, A.class_name, D.name as Teacher_name, C.required, C.credit
from classes as A, open_course as B, all_course as C, teachers as D
where A.class_ID = B.class_ID
and B.course_ID = C.course_ID
and B.teacher_ID = D.teacher_ID;