-- 修改导入sys_dept 表数据
update sys_dept set isenable ='1' , state = 'open';
update sys_dept set state ='closed' where id in 
	(SELECT id from (select * from sys_dept where pid =0) temp)

