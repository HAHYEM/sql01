--문제1
select first_name || last_name "이름",
       salary "월급",
       phone_number "전화번호",
       hire_date "입사일"
from employees
order by 입사일 asc;

--문제2
select job_title "업무이름",
       max_salary "최고월급"
from jobs
order by max_salary desc;

--문제3
select first_name,
       manager_id,
       commission_pct,
       salary
from employees
where salary > 3000;

--문제4
select job_title "업무이름",
       max_salary "최고월급"
from jobs
where max_salary >= 10000
order by max_salary desc;

--문제5
select first_name,
       salary,
       nvl(commission_pct, 0)
from employees
where salary >= 10000 and salary < 14000
order by salary desc;

--문제6
select first_name,
       salary,
       to_char(hire_date, 'YYYY-MM') "입사일",
       department_id
from employees
where department_id = 10
    or department_id = 90
    or department_id = 100;

--문제7
select first_name,
       salary
from employees
where first_name like '%S%'
    or first_name like '%s%';

--문제8
select department_name
from departments
order by length(department_name)desc;

--문제9
select UPPER(country_name)
from countries
order by UPPER(country_name) asc;

--문제10
select first_name,
       salary,
       replace(phone_number,'.','-')
       hire_date
from employees
where hire_date <= '03/12/31';