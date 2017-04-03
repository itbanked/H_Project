package com.example.dnltime;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.city.CitySearchController;
import com.example.dnltime.service.DnltimeSearchService;
import com.example.domain.Dnltime;

@Controller
@RequestMapping("/dnltime")
public class DnltimeSearchController {

	static Log log = LogFactory.getLog(CitySearchController.class);
	
	@Autowired
	DnltimeSearchService dnltimeSearchService;
	
	@GetMapping("/list")
	public String getList(Model model){
		log.info("getList()");
		
		List<Dnltime> list = dnltimeSearchService.getListAll(true);
		model.addAttribute("dnltime", list);
		return "dnltime/list";
	}
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model){
		log.info("getPage(" + pageNo + ")");
		
		Map<String, Object> page = dnltimeSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		return "dnltime/page";
	}

//	@GetMapping("/item/{dnlno}")
//	public String getItemByDnlno(@PathVariable int dnlno, Model model){
//		log.info("getItem("+ dnlno + ")");
//		
//		Dnltime dnltime = dnltimeSearchService.getDnltimeByDnlno(dnlno, true);
//		model.addAttribute("dnltime", dnltime);
//		
//		return "dnltime/item";
//	}
	
	@GetMapping("/item/{dnlno}")
	public String getItemByDnlnoWithMembersrl(@PathVariable int dnlno, Model model){
		log.info("getItem("+ dnlno + ")");
		
		Dnltime dnltime = dnltimeSearchService.getDnltimeByDnlnoWithMembersrl(dnlno);
		model.addAttribute("dnltime", dnltime);
		
		return "dnltime/item";
	}
}
