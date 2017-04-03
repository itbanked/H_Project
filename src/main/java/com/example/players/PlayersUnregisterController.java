package com.example.players;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Players;
import com.example.players.service.PlayersSearchService;
import com.example.players.service.PlayersUnregisterService;

@Controller
@RequestMapping("/players")
public class PlayersUnregisterController {

	@Autowired
	PlayersSearchService playersSearchService;
	
	@Autowired
	PlayersUnregisterService playersUnregisterService;
	
	@GetMapping("/unregister/{memberno}")
	public String unregisterForm(@PathVariable int memberno, Model model){
		Players players = playersSearchService.getPlayersByMemberno(memberno);
		model.addAttribute("players", players);
		return "players/unregisterForm";
	}
	
	@PostMapping("/unregister/{memberno}")
	public String unregister(@PathVariable int memberno, Integer pageNo){
		
		playersUnregisterService.unregister(memberno);
		
		return "redirect:/players/unregisterSuccess/" + memberno +"?pageNo=" + pageNo;
	}
	
	@GetMapping("/unregisterSuccess/{memberno}")
	public String unregisterSuccess(@PathVariable int memberno, Model model){
		model.addAttribute("memberno", memberno);
		return "players/unregisterSuccess";
	}
}
