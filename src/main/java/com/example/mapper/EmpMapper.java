package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.domain.Emp;
import com.example.util.Pagination;

@Mapper
public interface EmpMapper {
	
	@Select("select count(*) from emp")
	int CountAll();
	
	@Select("select * from emp")
	List<Emp> selectAll();
	List<Emp> selectAllWithDept();
	
	@Select({
		"select *                             ",
		"  from emp		                      ",
		" order by empno                      ",
		"offset #{firstItem} - 1 rows         ",
		" fetch next #{itemsPerPage} rows only"
	})
	List<Emp> selectPage(Pagination page);
	List<Emp> selectPageWithDept(Pagination page);

	@Select("select * from emp where empno=#{id}")
	Emp selectById(int id);
	Emp selectByIdWithDept(int id);

	int insert(Emp emp);
	
	@Update({
		"update emp set",
		"ename = #{ename},",
		"job = #{job},",
		"mgr = #{mgr},",
		"hiredate = #{hiredate},",
		"sal = #{sal},",
		"comm = #{comm},",
		"deptno = #{deptno}",
		"where empno = #{empno}"
	})
	int modify(Emp emp);

}
