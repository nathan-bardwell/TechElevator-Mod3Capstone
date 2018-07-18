package com.techelevator.park;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.model.Survey;
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
	
	@RequestMapping(path="/detail", method=RequestMethod.GET)
	public String getParkDetail(@RequestParam String parkcode, ModelMap modelHolder) {
		modelHolder.put("park", parkDao.getParkDetail(parkcode));
		return "detail";
	}
	
	@RequestMapping(path="/survey", method=RequestMethod.GET)
	public String getSurveyForm(ModelMap modelHolder) {
		return "Survey";
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
		return "surveyResults";
	}
	
	
}