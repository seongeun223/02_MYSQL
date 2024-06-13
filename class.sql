create database ogclass; -- db 생성

show databases; -- 전체 db 목록 조회

grant all privileges on ogclass.* to 'ohgiraffers'@'%'; -- 권한 부여

show grants for 'ohgiraffers'@'%'; -- 권한 조회

use ogclass;

create table if not exists class
(
    student_no int auto_increment primary key,
    student_name varchar(255) not null,
    gender  varchar(5) not null check (gender in ('남', '여')),
    github_id varchar(255) not null unique,
    email varchar(255) not null unique,
    mbti varchar(10),
    subject_no int,

    foreign key (subject_no)
        references favorite_subject (subject_no)
);

create table if not exists favorite_subject
(
    subject_no int auto_increment primary key,
    subject_name varchar(255) not null unique
);

insert into favorite_subject
(subject_name)
values('JAVA'),
      ('MYSQL'),
      ('JDBC'),
      ('MYBATIS'),
      ('SPRING'),
      ('REACT');

select * from favorite_subject;

insert into class
(student_name, gender, github_id, email, mbti, subject_no)
values ('강연진', '여', 'kangyeonjin', 'yeonjin917n.n@gmail.com', 'ISTP', 5),
       ('전유안', '남', 'euuuuuuan', 'euan.may24@gmail.com', 'ENFP', 4),
       ('권은혜', '여', 'dmsgpk237', 'a01027947353@gmail.com', 'ENFP', 2),
       ('박하얀', '여', 'parkhayarn', 's0224y92@gmail.com', 'INFP', null),
       ('박성은', '여', 'seongeun223', 'jklun080921@gmail.com', 'ISTJ', 2);

insert into class
(student_name, gender, github_id, email, mbti, subject_no)
values ('강진영', '남', 'weed97', 'weed9935@gmail.com', null, 2),
       ('권보현', '남', 'Kwonbohyun', 'kwon18923@gmail.com', null, 2),
       ('김강현', '남', 'kimkinghyeon', 'modan8199@gmail.com', null, 1),
       ('박태근', '남', 'Ohgiraffers-bear', 'Ohgiraffers-bear', null, 5),
       ('박효찬', '남', 'qwes5674', 'qwes5674@gmail.com', null, 2),
       ('배하은', '여', 'HEun0420', 'usialeta@gmail.com', null, 2),
       ('양혜연', '여', 'yanghyeyeon', 'yhy4058@gmail.com', 'ISFP', 5),
       ('위성민', '남', 'wdh970616', 'wdh970616@naver.com', null, null),
       ('이규섭', '남', 'LKS9616', 'lks609591@gmail.com', null, 2),
       ('이득규', '남', 'MANTISKYU', 'asdaron44@gmail.com', null, 2),
       ('이의정', '남', 'himisterlee', 'lejlej100418@gmail.com', null, 2),
       ('지동현', '남', 'Bring2it2on', 'yjkl0516@gmail.com', null, 3),
       ('홍주연', '여', 'juyeon99', 'juyeon0806@gmail.com', 'ISFP', 1);

describe class; -- 테이블 구성 확인
describe favorite_subject;