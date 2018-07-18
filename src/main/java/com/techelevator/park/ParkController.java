package com.techelevator.park;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.model.Survey;
import com.techelevator.parkDao.ParkDao;
import com.techelevator.parkDao.WeatherDao;

@Controller
public class ParkController
{

	@Autowired
	private ParkDao parkDao;
	
	@Autowired
	private WeatherDao weatherDao;

	@RequestMapping(path = { "/", "/home" }, method = RequestMethod.GET)
	public String getAllParks(ModelMap modelHolder)
	{
		modelHolder.put("park", parkDao.getAllParks());
		return "home";
	}
	
	@RequestMapping(path="/detail", method=RequestMethod.GET)
	public String getParkDetail(@RequestParam String parkcode, ModelMap modelHolder, ModelMap weatherHolder) {
		modelHolder.put("park", parkDao.getParkDetail(parkcode));
		weatherHolder.put("weatherInfo", weatherDao.getParkWeather(parkcode));
		return "detail";
	}
	
	@RequestMapping(path="/survey", method=RequestMethod.GET)
	public String getSurveyForm(ModelMap modelHolder) {
		
		return "survey";
	}
	
	@RequestMapping(path="/survey", method=RequestMethod.POST)
	public String postSurveyInfo(String parkcode, String state, String emailaddress, String activitylevel) {
		Survey survey = new Survey();
		survey.setParkcode(parkcode);
		survey.setState(state);
		survey.setEmailaddress(emailaddress);
		survey.setActivitylevel(activitylevel);
		return "redirect:/surveyResults";
	}
	
	@RequestMapping(path="/surveyResults", method=RequestMethod.GET)
	public String getSurveyResults(ModelMap modelHolder) {
		modelHolder.put("popularParks", parkDao.getPopularParks());
		return "surveyResults";
	}
	
	
	
}