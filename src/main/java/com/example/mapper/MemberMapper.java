package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.domain.Member;
import com.example.util.Pagination;

@Mapper
public interface MemberMapper {
	
	@Select("select count(*) from member")
	int CountAll();
	
	@Select("select * from member")
	List<Member> selectAll();
	
	@Select({
		"select *                             ",
		"  from member	                      ",
		" order by empno                      ",
		"offset #{firstItem} - 1 rows         ",
		" fetch next #{itemsPerPage} rows only"
	})
	List<Member> selectPage(Pagination page);

	@Select("select * from member where userid=#{id}")
	Member selectById(String id);

	int insert(Member member);

}
