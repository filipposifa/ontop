

 create temporary table t as  select distinct courses.uniid, courses.depid, courses.teacherid from courses courses where 
(((courses.teachertype = 3) and (courses.ctype = 1)) or ((courses.teachertype = 3) and (courses.ctype = 0))) and 
courses.teacherid IS NOT NULL and 
courses.depid IS NOT NULL and 
courses.uniid IS NOT NULL;

analyze t;

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
t, students alias0 ,  takescourses alias2 , courses alias7 , teachers alias5 
where 
alias0.uniid>? and
alias0.advisortype = 3 and 
alias0.stype = 0 and 
alias2.coursetype = 0 and 
alias7.teachertype = 3 and 
alias7.ctype = 0 and 
alias5.ttype = 3 and 
alias0.advisorid = alias5.id and 
alias0.uniid = alias5.uniid and 
alias0.depid = alias5.depid and 
alias0.advisorid = alias7.teacherid and 
alias2.courseid = alias7.id and 
alias0.uniid = alias7.uniid and 
alias0.depid = alias7.depid and 
alias0.id = alias2.studid and 
alias0.uniid = alias2.uniid and 
alias0.depid = alias2.depid and 
alias0.advisorid = t.teacherid and 
alias0.uniid = t.uniid and 
alias0.depid = t.depid and 
alias0.uniid IS NOT NULL and 
alias0.id IS NOT NULL and 
alias0.advisorid IS NOT NULL and 
alias0.depid IS NOT NULL and 
alias2.courseid IS NOT NULL




