package com.example.dnltime;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.dnltime.service.DnltimeSearchService;
import com.example.domain.Dnltime;

@Controller
@RequestMapping("/dnltime")
public class DnltimeSearchController {

	@Autowired
	DnltimeSearchService dnltimeSearchService;
	
	@GetMapping("/list")
	public String getList(Model model){
		
		List<Dnltime> list = dnltimeSearchService.getListAll(true);
		model.addAttribute("dnltime", list);
		return "dnltime/list";
	}
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model){
		
		Map<String, Object> page = dnltimeSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		return "dnltime/page";
	}
	
	@GetMapping("/item")
	public String getItemByDnlno(){
		
		return "dnltime/item";
	}
}
