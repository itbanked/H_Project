package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.domain.Molecule;
import com.example.domain.State;
import com.example.domain.Warning;
import com.example.domain.Molecule;
import com.example.util.Pagination;

@Mapper
public interface MoleculeMapper {

	/*
	 * Select
	 */
	@Select("select count(*) from molecule")
	int selectTotalCount();
	   
	@Select("select * from molecule")
	List<Molecule> selectAll();
	List<Molecule> selectAllWithMass();
	
	
	@Select({
		"select *                ",
		"  from molecule             ",
		" order by name            ",
		" offset #{firstItem} - 1 rows   ",
		" fetch next #{itemsPerPage} rows only"
	})
	List<Molecule> selectPage(Pagination paging);
	List<Molecule> selectPageWithMass(Pagination paging);
	
	@Select("select * from molecule where chemical_formula=#{chemicalFormula}")
	Molecule selectByFormula(String chemicalFormula);
	@Select("select * from molecule where name=#{name}")
	Molecule selectByName(String name);

	Molecule selectByFormulaWithMass(String chemicalFormula);

	@Select("select * from molecule where average_melting_point=#{averageMeltingPoint}")
	Molecule selectByAverageMeltingPoint(Double averageMeltingPoint);
	
	@Select("select * from state where state=#{state}")
	State selectByState(String s);

	@Select("select * from warning where hazard_statements=#{hazardStatements}")
	Warning selectByhazardStatements(String hazardStatements);
	

	
	
	/*
	 * Insert
	 */
	int insert(Molecule molecule);
	/*
	 * Update
	 */
	int updateByName(Molecule molecule);
	
	/*
	 * Delete
	 */
	@Delete("delete from molecule where name=#{name}")
	int deleteByName(String name);
	
	
}
