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
import com.example.players.service.PlayersRegisterService;
import com.example.players.service.PlayersSearchService;

@Controller
@RequestMapping("/players")
public class PlayersRegisterController {

	@Autowired
	PlayersSearchService playersSearchService;
	
	@Autowired
	PlayersRegisterService playersRegisterService;
	
	@GetMapping("/register")
	public String registerForm(PlayersForm playersForm){
		
		return "players/registerForm";
	}
	
	@PostMapping("/register")
	public String register(@Valid PlayersForm playersForm, BindingResult errors, Integer pageNo){
		System.out.println(playersForm);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "players/registerForm";
		}
		
		playersRegisterService.register(playersForm, errors);
		
		if(errors.hasErrors()){
			System.out.println(errors);
			return "players/registerForm";
		}
		
		return "redirect:/players/registerSuccess/" + playersForm.getMemberno() + "?pageNo=" + pageNo;
	}
	
	@GetMapping("/registerSuccess/{memberno}")
	public String registerSuccess(@PathVariable int memberno, Model model){
		Players players = playersSearchService.getPlayersByMemberno(memberno);
		model.addAttribute("players", players);
		return "players/registerSuccess";
	}
}
