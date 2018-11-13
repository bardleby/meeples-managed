package com.techelevator.meeple;

import java.util.ArrayList;
import java.util.List;

public class Game {

	private int totalPlayers;
	private int turnLength;
	private List<Player> players;
	
	public int getTotalPlayers() {
		return totalPlayers;
	}
	public void setTotalPlayers(int totalPlayers) {
		this.totalPlayers = totalPlayers;
	}
	public int getTurnLength() {
		return turnLength;
	}
	public void setTurnLength(int turnLength) {
		this.turnLength = turnLength;
	}
	
	public void addPlayers() {
		players = new ArrayList<Player>();
		for(int i = 1; i <= totalPlayers; i++) {
			Player p = new Player();
			p.setId(i);
			players.add(p);
		}
	}
	
	public List<Player> getPlayerList() {
		return this.players;
	}
	
	
	
}
