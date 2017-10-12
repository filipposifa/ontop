
select 
alias0.depid as var1,
alias0.uniid as var2,
alias0.id as var3,
alias0.uniid as var4,
alias0.depid as var5,
alias0.uniid as var6
 from 
students alias0 , teachers alias1 , departments alias2 , teachers alias3 
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
alias0.depid IS NOT NULL and
((alias1.ttype = 0) or ((alias1.ttype = 1) or ((alias1.ttype = 3) or (alias1.ttype = 2)))) and 
alias1."docD" IS NOT NULL

