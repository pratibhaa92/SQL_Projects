use sf_salaries;

-- 1. Show all the rows and collumns from the table
use sf_salaries;
select * from salaries;

-- 2.show only the employee and jobtitle columns.
select employeeName,jobtitle from salaries;

-- 3. show the number of employee in the table.
select count(*) from salaries;

-- 4. show the unique jobtitle in the table
select distinct jobtitle from salaries;

-- 5. show the jobtitle and overtime pay for all employee with 
-- overtime pay greater than 50000.
select jobtitle, overtimepay from salaries
where overtimepay >= 50000;

-- 6. show the average base pay for all employees.
select avg(basepay) as "Avg Basepay" from salaries;

-- 7. Top 10 highest paid employees.
select employeename,totalpay from salaries
order by  totalpay desc
limit 10;

-- 8. show the avg of basepay, overtimepay,and otherpay for each employee
select employeename,(basepay+overtimepay+otherpay) /3 from salaries;

-- 9. show all the employee who have the word "manager" word in the job title
select * from salaries 
;
 select * from salaries where jobtitle like '%manager%';
 -- 10. show all employees with a job title not equal to "Manage"
 select * from salaries
 where jobtitle <> "salary";
 
-- 11. show all employees with total pay between 50000 to 75000

select * from salaries 
where totalpay >= 50000 and totalpay <= 75000;

select * from salaries where totalpay between 50000 and 75000;

-- 12. show all employees with basepay less than 50000 
-- or a total pay greater than 100000.
select * from salaries
where basepay >50000 or totalpay >100000;

-- 13. show all employees with a total pay benifits values
-- between 1,25,000 and 1,50,000 and job title containing the word 'Directoe'
select * from salaries 
where Totalpaybenefits between 125000 and 150000
and jobtitle like "%Director%";

-- 14.show all employees order by their totalpaybenifits in desending order 
select * from salaries 
order by Totalpaybenefits desc ;

-- 15. show all job titles with an average base pay of
-- at least 100,000 and order them by the average base pay in desending order 
select jobtitle,avg(basepay) as "Avgbasepay" from salaries
group  by jobtitle
having avg(basepay) >=100000
order by Avgbasepay desc;

-- 16.delete the colum
select * from salaries ;
alter table salaries 
drop  column notes;

-- 17. Update base pay of all employees with
-- the job title containing "Manager" by incresing it by 10%
update salaries
set basepay = basepay * 1.1
where jobtitle like "%Manage%";

-- 18. delete all employees who have no overtimepay
select count(*) from salaries
where overtimepay = 0;
delete from salaries 
where overtimepay = 0;






  