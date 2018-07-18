package com.techelevator.model;

public class weather
{
	private String parkcode;
	private int fivedayforcastvalue;
	private int low;
	private int high;
	private String forcast;
	
	
	public weather(String parkcode, int fivedayforcastvalue, int low, int high, String forcast)
	{
		super();
		this.parkcode = parkcode;
		this.fivedayforcastvalue = fivedayforcastvalue;
		this.low = low;
		this.high = high;
		this.forcast = forcast;
	}


	public weather()
	{
		
	}


	public String getParkcode()
	{
		return parkcode;
	}


	public void setParkcode(String parkcode)
	{
		this.parkcode = parkcode;
	}


	public int getFivedayforcastvalue()
	{
		return fivedayforcastvalue;
	}


	public void setFivedayforcastvalue(int fivedayforcastvalue)
	{
		this.fivedayforcastvalue = fivedayforcastvalue;
	}


	public int getLow()
	{
		return low;
	}


	public void setLow(int low)
	{
		this.low = low;
	}


	public int getHigh()
	{
		return high;
	}


	public void setHigh(int high)
	{
		this.high = high;
	}


	public String getForcast()
	{
		return forcast;
	}


	public void setForcast(String forcast)
	{
		this.forcast = forcast;
	}
	
	
	
}
