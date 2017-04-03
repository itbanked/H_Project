package com.example.players;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.Players;
import com.example.form.PlayersForm;
import com.example.players.service.PlayersModifyService;
import com.example.players.service.PlayersRegisterService;
import com.example.players.service.PlayersSearchService;

@Controller
@RequestMapping("/players")
public class PlayersModifyController {

	@Autowired
	PlayersSearchService playersSearchService;
	
	@Autowired
	PlayersModifyService playersModifyService;
	
	@GetMapping("/modify/{memberno}")
	public String registerForm(PlayersForm playersForm, @PathVariable int memberno){
		Players players = playersSearchService.getPlayersByMemberno(memberno);
		playersForm.setPlayers(players);
		
		return "players/modifyForm";
	}
	
	@PostMapping("/modify")
	public String register(@Valid PlayersForm playersForm, BindingResult errors, Integer pageNo){
		System.out.println(playersForm);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "players/registerForm";
		}
		
		playersModifyService.modify(playersForm, errors);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "players/modifyForm";
		}
		
		return "redirect:/players/modifySuccess/" + playersForm.getMemberno() + "?pageNo=" + pageNo;
	}
	
	@GetMapping("/modifySuccess/{memberno}")
	public String modifySuccess(@PathVariable int memberno, Model model){
		Players players = playersSearchService.getPlayersByMemberno(memberno);
		model.addAttribute("players", players);
		return "players/modifySuccess";
	}
}
