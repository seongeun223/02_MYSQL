-- 1.
select
    student_no 학번,
    student_name 이름,
    date(entrance_date) 입학년도
from tb_student
where department_no = 002
order by entrance_date;

-- 2.
select
   professor_name,
   professor_ssn
from
    tb_professor
where char_length(professor_name) <> 3;

-- 3.
select
    professor_name 교수이름,
    professor_ssn 나이
from tb_professor
where substring(professor_ssn, 8, 1) in (1,3);


