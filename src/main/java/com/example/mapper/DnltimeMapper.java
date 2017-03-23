package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.domain.Dnltime;
import com.example.util.Pagination;

@Mapper
public interface DnltimeMapper {
	
	@Select("select count(*) from dnltime")
	int selectTotalCount();

	@Select("select * from dnltime")
	List<Dnltime> selectAll();
	List<Dnltime> selectAllWithDnl();
	
	@Select({
		"select * 							",
		"  from dnltime						",
		" order by dnlno					",
		"offset #{firstItem} -1 rows		",
		" fetch next #{itemsPerPage} rows only"
	})
	List<Dnltime> selectPage(Pagination paging);
	List<Dnltime> selectPageWithDnltime(Pagination paging);
	
	@Select("select * from dnltime where dnlno=#{dnlno}")
	Dnltime selectByDnlno(int dnlno);
	Dnltime selectByDnlnoWithDnl(int dnlno);
	
	int insert(Dnltime dnltime);
	
	int updateByDnlno(Dnltime dnltime);
	
	@Delete("delete from dnltime where dnlno=#{dnlno}")
	int deleteByDnlno(int dnlno);
}
