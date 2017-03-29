package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.domain.Manchester;

@Mapper
public interface ManchesterMapper {

	@Select("select * from manchester order by idno")
	List<Manchester> selectAll();
	List<Manchester> selectAllWithPlayers();
	
	@Select("select * from manchester where idno=#{idno}")
	Manchester selectByIdno(Integer idno);
	Manchester selectByIdnoWithPlayers(Integer idno);
	
	int insert(Manchester manchester);
	
	int updateByIdno(Manchester manchester);
	
	@Delete("delete from manchester where idno=#{idno}")
	int deleteByIdno(int idno);
}
