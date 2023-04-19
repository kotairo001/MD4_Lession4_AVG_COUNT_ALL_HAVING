select address, count(studentID) as "Student number" from student group by address;
select * from mark;
select student.studentName, avg(mark) as "Average Mark" from student
join mark on student.studentID = mark.studentID
group by student.studentName;
select student.studentName, avg(mark) as "Average Mark" from student
join mark on student.studentID = mark.studentID 
group by student.studentName
having avg(mark)<15;

select student.studentName, avg(mark) as "Average Mark" from student
join mark on student.studentID = mark.studentID 
group by student.studentName
having avg(mark)>=all(select avg(mark) from mark group by mark.studentID);