

/*query 4A*/
select distinct pnumber from project, department, employee where dnum=dnumber and mgr_ssn=ssn and lname='Smith')union(select distinct pnumber from project, works_on, employee where pnumber=pno and essn=ssn and lname='Smith');


/*query 3A*/
select fname, lname from employee where not exists((select pnumber from project where dnum=5)except(select pno from works_on where ssn=essn));


/*query 3B*/
select lname, fname from employee where not exists(select * from works_on as b where(b.pno in(select pnumber from project where dnum=5)and not exists(select * from works_on as c where c.essn=ssn and c.pno=b.pno)));

