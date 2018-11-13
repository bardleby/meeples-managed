package com.techelevator.meeple;

public class Player {
	
	private int id;
	protected boolean isActivePlayer;
	private long timePlayed;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public void setTimePlayed(long timePlayed) {
		this.timePlayed = timePlayed;
	}
	
	public long getTimePlayed() {
		return this.timePlayed;
	}
	
	public void startTurn(long maxTime) {
		
	}

}
