package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.domain.Molecule;
import com.example.domain.Molecule;
import com.example.util.Pagination;

@Mapper
public interface MoleculeMapper {

	/*
	 * Select
	 */
	@Select("select count(*) from molecules")
	int selectTotalCount();
	   
	@Select("select * from molecules")
	List<Molecule> selectAll();
	List<Molecule> selectAllWithMass();
	
	
	@Select({
		"select *                ",
		"  from molecules             ",
		" order by name            ",
		" offset #{firstItem} - 1 rows   ",
		" fetch next #{itemsPerPage} rows only"
	})
	List<Molecule> selectPage(Pagination paging);
	List<Molecule> selectPageWithMass(Pagination paging);
	
	@Select("select * from molecules where chemical_formula=#{chemicalFormula}")
	Molecule selectByFormula(String chemicalFormula);
	@Select("select * from molecule where name=#{name}")
	Molecule selectByName(String name);
	
	Molecule selectByFormulaWithMass(String chemicalFormula);
	
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
	@Delete("delete from molecules where chemical_formula=#{chemicalFormula}")
	int deleteByFormula(String chemicalFormula);
	
	
}
