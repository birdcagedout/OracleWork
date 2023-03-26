desc emp;

select * from emp;
select * from dept;
select * from salgrade;

select distinct deptno from emp;

select distinct job, deptno 
    from emp;
    

select ename, sal, sal*12+comm as annual, comm
    from emp;
    
select * 
    from emp
    order by sal desc, comm desc;
    
    
select *
    from emp
    where deptno = 30;
    
select *
    from emp
    where deptno = 30 and job = 'SALESMAN';
    
select sal from emp;
select mod(sal, 1000) from emp;

select ename from emp;

select ename from emp where ename >= 'F' order by ename;


select * 
    from emp
    where sal = 3000;

select *
    from emp
    where sal <> 3000;
    
select *
    from emp
    where sal != 3000;
    
select *
    from emp
    where sal ^= 3000;

select *
    from emp
    where not sal = 3000;
    
    
select *
    from emp
    where job NOT in ('MANAGER', 'SALESMAN', 'CLERK');
    
select * 
    from emp
    where sal between 2000 and 3000;
    
    
select * 
    from emp
    where ename like '_L%';
    
    
create table temp (
    ename   varchar2(10),
    sal     number(4)
);


select * from temp;

select *
    from temp
    where ename like '%A\_%' escape '\';
    
select *
    from temp
    where ename like '%`_`_A%' escape '`';
    
    
select * 
    from emp
    where comm = null;
    
select *
    from emp
    where comm is null;
    
    
select *
    from emp
    where mgr is null;
    
select *
    from emp
    where sal > null
    and comm is null;
    
select *
    from emp
    where sal > null
    or comm is null;
    
select empno, ename, sal, deptno
    from emp
    where deptno = 10
union
select empno, ename, sal, deptno
    from emp
    where deptno = 20;
    
select empno, ename, sal, deptno
    from emp
    where deptno = 10
union
select ename, empno, sal, deptno
    from emp
    where deptno = 20;
    
select empno, ename, sal, deptno
    from emp
    where deptno = 10
union
select sal, job, deptno, sal
    from emp
    where deptno = 20;
    
    
