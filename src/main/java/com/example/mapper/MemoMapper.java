package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.domain.Memo;
import com.example.util.Pagination;

@Mapper
public interface MemoMapper {
	
	/*
	 * Select
	 */
	@Select("select count(*) from memo")
	int selectTotalCount();
	
	@Select("select * from memo")
	List<Memo> selectAll();
	List<Memo> selectAllWithMember();
	
	@Select({
		"select *                ",
		"  from memo             ",
		" order by mno desc         ",
		"offset #{firstItem} - 1 rows   ",
		" fetch next #{itemsPerPage} rows only"
	})
	List<Memo> selectPage(Pagination paging);
	List<Memo> selectPageWithMember(Pagination paging);
	
	@Select("select * from memo where mno=#{mno}")
	Memo selectByMno(int mno);
	Memo selectByMnoWithMember (int mno);
	
	int insert(Memo memo);
	
	int updateByMno(Memo memo);
}
