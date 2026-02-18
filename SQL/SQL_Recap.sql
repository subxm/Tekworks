create database DB1;
use db1;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email_id VARCHAR(150) UNIQUE NOT NULL,
    gender varchar(20) NOT NULL, city VARCHAR(100),marks INT);
    
INSERT INTO students (name, email_id, gender, city, marks) VALUES
('Nikitha G', 'nikitha.g@gmail.com', 'Female', 'Hyderabad', 78),
('Shruti Tiwari', 'shruti.tiwari@gmail.com', 'Female', 'Hyderabad', 85),
('Srujana Tk', 'srujana.tk@gmail.com', 'Female', 'Hyderabad', 69),
('Chandana Abbidi', 'chandana.abbidi@gmail.com', 'Female', 'Hyderabad', 92),
('Keerthana Bodi', 'keerthana.bodi@gmail.com', 'Female', 'Hyderabad', 74),
('Akshay Bouroju', 'akshay.bouroju@gmail.com', 'Male', 'Hyderabad', 88),
('Nithisha Kandakatla', 'nithisha.k@gmail.com', 'Female', 'Hyderabad', 61),
('Dishmitha M', 'dishmitha.m@gmail.com', 'Female', 'Hyderabad', 55),
('Deepika Nadimpalli', 'deepika.n@gmail.com', 'Female', 'Hyderabad', 90),
('Keerthan Pentam', 'keerthan.p@gmail.com', 'Male', 'Hyderabad', 73),
('Kranthi Kumar Samudrala', 'kranthi.sam@gmail.com', 'Male', 'Hyderabad', 82),
('Sushmitha Siridoshi', 'sushmitha.s@gmail.com', 'Female', 'Hyderabad', 67),
('Sree Charan Vutukuri', 'sree.charan@gmail.com', 'Male', 'Hyderabad', 95),
('Sanjana Yelligaddala', 'sanjana.y@gmail.com', 'Female', 'Hyderabad', 79);


select * from students;
-- 1 
select id,city,marks,name from students;

-- 2: Display only male students details
select * from students where gender='Male';
-- 3: Keerthana Info
select * from students where name='Keerthana Bodi';
-- 4: Deepika student details
select id,name,marks from students where id=9;

-- 5: Update Akshay's city to pune
update students set city='Pune' where id=6;

select * from students where id=6;

update students set city='Delhi' where id=5;
update students set city='Kerala' where id=9;
update students set city='Banglore' where id=4;

select * from students where id=5 or id=9 or id=4;

-- Display student details whose city is pune and gender is female
select * from students where city='Pune' and gender='Female';


-- display student id, name and marks whose city is pune or banglore
-- > from pune - get male and female
-- > from banglore - get only male
-- > from remaining cities whose score is > 90

select id,name,marks,city from students where city='pune' or city='banglore' and gender='male' or marks>=90;


-- display student details whose marks is bw 40 to 90
select * from students where marks between 40 and 90;


-- display records whose score not bw 50 to 70
select * from students where marks not between 50 and 70;

-- display student details from pune and banglore 
select * from students where city in ('pune','banglore');

-- display number of students in each city

select city,count(*) as no_of_students from students GROUP BY city order by count(*);

select city,avg(marks) as avg_marks from students group by city order by avg(marks) desc limit 1;


select gender,avg(marks) as "BEST GENDER IN EDUCATION" from students group by gender order by avg(marks) desc limit 1;