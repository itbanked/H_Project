package com.example.manchester;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Manchester;
import com.example.manchester.service.ManchesterSearchService;

@Controller
@RequestMapping("/manchester")
public class ManchesterSearchController {

	@Autowired
	ManchesterSearchService manchesterSearchService;
	
	@GetMapping("/list")
	public String getList(Model model){
		
		List<Manchester> list = manchesterSearchService.getListAll();
		model.addAttribute("list", list);
		
		return "manchester/list";
	}
	@GetMapping("/item/{idno}")
	public String getItem(@PathVariable Integer idno, Model model){
		
		Manchester m = manchesterSearchService.getPlayersByIdno(idno, true);
		model.addAttribute("manchester", m);
		
		return "manchester/item";
	}
}
