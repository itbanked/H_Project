package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.domain.Players;
import com.example.util.Pagination;

@Mapper
public interface PlayersMapper {

	@Select("select count(*) from players")
	int selectTotalCount();
	
	@Select("select * from players")
	List<Players> selectAll();	
	List<Players> selectAllWithManchester();
	
	@Select({
		"select *			",
		"  from players	order by idno, memberno	",
		"offset #{firstItem} -1 rows",
		"fetch next #{itemsPerPage} row only"
	})
	List<Players> selectPage(Pagination paging);
	List<Players> selectPgeWithManchester(Pagination paging);
	
	@Select("select * from players where memberno = #{memberno}")
	Players selectByMemberno(int memberno);
	
	int insert (Players players);
	
	int updateByMemberno(Players players);
	
	@Delete("delete from players where memberno = #{memberno}")
	int deleteByMemberno(int memberno);
}
