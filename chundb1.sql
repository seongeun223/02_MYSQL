select * from TB_DEPARTMENT; --  학과테이블
select * from TB_STUDENT; -- 학생테이블
select * from TB_PROFESSOR; -- 교수테이블
select * from TB_CLASS; -- 수업테이블
select * from TB_CLASS_PROFESSOR; -- 수업교수테이블
select * from TB_GRADE; -- 학점테이블

-- 1.
select
department_name 학과명,
category 계열
from
    tb_department;

-- 2.
select
    concat(department_name, '의 정원은 ', capacity, '명 입니다.')
from
    tb_department;

-- 3.
select
    a.student_name
from tb_student a inner join tb_department b using(department_no)
where absence_yn = 'Y' and department_name = '국어국문학과'
  and substring(student_ssn, 8, 1) in (2,4);

-- 4.
select
    student_name
from tb_student
where student_no in('A513079', 'A513090', 'A513091', 'A513110', 'A513119');

-- 5.
select
    department_name,
    category
from
    tb_department
where capacity between 20 and 30;

-- 6.
select
    professor_name
from
    tb_professor
where department_no is null;

-- 7.
select
    a.student_name
from tb_student a join tb_department b on a.DEPARTMENT_NO = b.DEPARTMENT_NO
where DEPARTMENT_NO is null;

-- 8.
select
    class_no
from tb_class
where preattending_class_no is not null;

-- 9.
select distinct
    category
from tb_department
order by category;

-- 10.
select
    student_no,
    student_name,
    student_ssn
from
    tb_student
where substring(student_address, 1, 2) in ('전주') and absence_yn = 'N' and year(entrance_date) = 2019
order by student_name;