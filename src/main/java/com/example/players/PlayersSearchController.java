package com.example.players;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Players;
import com.example.players.service.PlayersSearchService;

@Controller
@RequestMapping("/players")
public class PlayersSearchController {

	@Autowired
	PlayersSearchService playersSearchService;
	
	@GetMapping("/list")
	public String getList(Model model){
		
		List<Players> list = playersSearchService.getListAll();
		model.addAttribute("list", list);
		
		return "players/list";
	}
	
	@GetMapping("/page/{pageNo}")
	public String getPage(@PathVariable int pageNo, Model model){
		Map<String, Object> page = playersSearchService.getPage(pageNo);
		model.addAttribute("page", page);
		
		return "players/page";
	}
}
