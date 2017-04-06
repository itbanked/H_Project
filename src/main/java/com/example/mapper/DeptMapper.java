package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.domain.Dept;
import com.example.util.Pagination;

@Mapper
public interface DeptMapper {

	@Select("select count(*) from dept")
	int selectTotalCount();
	
	@Select("select * from dept")
	List<Dept> selectAll();
	List<Dept> selectAllWithEmp();
	
	@Select({
		"select *                             ",
		"  from dept	                      ",
		" order by deptno                     ",
		"offset #{firstItem} - 1 rows         ",
		" fetch next #{itemsPerPage} rows only"
	})
	List<Dept> selectPage(Pagination paging);
	List<Dept> selectPageWithEmp(Pagination paging);
	
	@Select("select * from dept where deptno=#{code}")
	Dept selectByCode(String code);
	Dept selectByCodeWithEmp(String code);
	
	int insert(Dept dept);
	
	@Update({
		"update dept set",
		"dname = #{dname},",
		"loc = #{loc}",
		"where deptno = #{deptno}"
	})
	int updateByDeptNo(Dept dept);
	
	@Delete("delete from dept where deptno=#{code}")
	int deleteByDeptNo(int code);
}
