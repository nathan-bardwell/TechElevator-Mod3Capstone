package com.techelevator.parkDao;

import java.util.List;


import com.techelevator.model.Park;
public interface ParkDao
{

	List<Park> getAllParks();
	Park getParkDetail(String parkcode);
	List<Park> getPopularParks();
	

}
