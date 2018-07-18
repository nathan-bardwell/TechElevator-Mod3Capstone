package com.techelevator.park;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.parkDao.ParkDao;

@Controller
public class ParkController
{

	@Autowired
	private ParkDao parkDao;

	@RequestMapping(path = { "/", "/home" }, method = RequestMethod.GET)
	public String getAllParks(ModelMap modelHolder)
	{
		modelHolder.put("park", parkDao.getAllParks());
		return "home";
	}
}