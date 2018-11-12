package com.techelevator.meeple;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller 
public class GameController {

	@RequestMapping(path="/", method=RequestMethod.GET)
	public String showInputForm() {
		return "setup";
	}
	
	
	@RequestMapping(path="/", method=RequestMethod.POST)
	public String setGameData(@RequestParam int totalPlayers,
							 @RequestParam int turnLength,
							 ModelMap model) {
		Game game = new Game();
		game.setTotalPlayers(totalPlayers);
		game.setTurnLength(turnLength);
		
		return "redirect:/gameData";
	}
	
	@RequestMapping(path="/gameData", method=RequestMethod.GET)
	public String getGameData() {
		return "gameData";
	}
	
	
}
