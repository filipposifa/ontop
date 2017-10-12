select
alias0.depid as var1,
alias0.uniid as var2,
alias0.id as var3,
alias0.depid as var4,
alias0.uniid as var5,
alias0.advisorid as var6,
alias0.depid as var7,
alias0.uniid as var8,
alias2.courseid as var9
from
students alias0 , students alias1 , takescourses alias2 , courses alias3 , teachers alias5 
where 
alias0.uniid <? and
alias0.stype = 1 and 
alias0.advisortype = 2 and 
alias2.coursetype = 1 and 
alias3.teachertype = 2 and 
alias3.ctype = 1 and 
alias5.ttype = 2 and 
alias0.advisorid = alias5.id and 
alias0.uniid = alias5.uniid and 
alias0.depid = alias5.depid and 
alias0.advisorid = alias3.teacherid and 
alias2.courseid = alias3.id and 
alias0.uniid = alias3.uniid and 
alias0.depid = alias3.depid and 
alias0.id = alias2.studid and 
alias0.uniid = alias2.uniid and 
alias0.depid = alias2.depid and 
alias0.advisorid = alias1.advisorid and 
alias0.uniid = alias1.uniid and 
alias0.depid = alias1.depid and 
alias0.uniid IS NOT NULL and 
alias0.id IS NOT NULL and 
alias0.advisorid IS NOT NULL and 
alias0.depid IS NOT NULL and 
alias2.courseid IS NOT NULL and
(((alias1.advisortype = 2) and (alias1.stype = 0)) or ((alias1.advisortype = 2) and (alias1.stype = 1))) and 
alias1.advisorid IS NOT NULL and 
alias1.depid IS NOT NULL and 
alias1.uniid IS NOT NULL
