

create temporary table t as select distinct teachers."docD" from teachers teachers where 
((teachers.ttype = 0) or ((teachers.ttype = 1) or ((teachers.ttype = 3) or (teachers.ttype = 2)))) and 
teachers."docD" IS NOT NULL;



analyze t;


select 
alias0.depid as var1,
alias0.uniid as var2,
alias0.id as var3,
alias0.uniid as var4,
alias0.depid as var5,
alias0.uniid as var6
from
students alias0 , t alias1 , departments alias2 , teachers alias3 
where
alias0.uniid>? and
alias0.stype = 1 and 
alias0.uniid = alias3."docD" and 
alias0.uniid = alias2.universityid and 
alias0.depid = alias2.departmentid and 
alias0.uniid = alias1."docD" and 
alias0.uniid = alias0.degreeuniid and 
alias0.uniid IS NOT NULL and 
alias0.id IS NOT NULL and 
alias0.depid IS NOT NULL 


