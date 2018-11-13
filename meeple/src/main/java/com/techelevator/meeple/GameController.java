package com.techelevator.meeple;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes({"gameData", "playerList"})

@Controller 
public class GameController {
	
	List<Player> currentPlayers = new ArrayList<Player>();
	

	@RequestMapping(path="/", method=RequestMethod.GET)
	public String showInputForm() {
		return "setup";
	}
	
	
	@RequestMapping(path="/setup", method=RequestMethod.POST)
	public String setGameData(@RequestParam int totalPlayers,
							 @RequestParam int turnLength,
							 ModelMap model) {
		Game game = new Game();
		game.setTotalPlayers(totalPlayers);
		game.setTurnLength(turnLength);
		game.addPlayers();
		
		model.addAttribute("gameData", game);
		
		return "redirect:/gameData";
	}
	
	@RequestMapping(path="/gameData", method=RequestMethod.GET)
	public String getGameData() {
		return "gameData";
	}
	
	@RequestMapping(path="/startRound", method=RequestMethod.POST)
	public String startRound(ModelMap model) {
		Game game = (Game)model.get("gameData");
		currentPlayers = game.getPlayerList();
		model.addAttribute("playerList", currentPlayers);
		return "redirect:/turnCounter";
	}
	
	@RequestMapping(path="/turnCounter", method=RequestMethod.GET) 
	public String takeTurn(ModelMap model) {
		Game game = (Game)model.get("gameData");
		currentPlayers = (List<Player>)model.get("playerList");
		return "turnCounter";
	}
	
	
}
