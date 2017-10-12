
select  
alias0.id as var1,
alias0.name as var2,  
alias0.email as var3,  
alias0.phone as var4 from 
public.heads alias1 , public.teachers alias0 , students alias2 
where 
alias0.id = alias2.advisorid and 
alias1.profid = alias0.id and 
alias1.uniid  <? and 
alias1.depid = '0' and 
alias0.uniid  <101 and 
alias0.ttype = 3 and 
alias0.depid = '0' and 
alias2.depid = '0' and 
alias2.uniid  <101 and 
alias0.phone IS NOT NULL and 
alias0.name IS NOT NULL and 
alias0.id IS NOT NULL and 
alias0.email IS NOT NULL and
(((alias2.advisortype = 3) and (alias2.stype = 0)) or ((alias2.advisortype = 3) and (alias2.stype = 1))) and 
alias2.advisorid IS NOT NULL and 
alias2.depid IS NOT NULL and 
alias2.uniid IS NOT NULL
