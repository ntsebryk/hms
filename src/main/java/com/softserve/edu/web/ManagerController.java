package com.softserve.edu.web;

import java.util.Map;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardRecord;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.UserRole;
import com.softserve.edu.service.CardService;
import com.softserve.edu.service.CardRecordService;
import com.softserve.edu.service.UserService;
import com.softserve.edu.util.UserRoleStatusFormatter;
import com.softserve.edu.util.UserRoleParser;
import com.softserve.edu.util.DoctorAssigningFormatter;

@Controller
public class ManagerController {

	@Autowired
	CardService cardService;

	@Autowired
	UserService userService;

	@Autowired
	CardRecordService cardRecordService;

	@RequestMapping(value = "/admin-manager",method=RequestMethod.GET)
	public String getCardsForPage(Model model) {
		return "admin-manager";
	}

	@RequestMapping(value="/admin-manager/changeStatus", method=RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public UserRole changeUserRoleStatus(@RequestBody UserRoleStatusFormatter ursf) {
		return userService.updateUserRoleStatus(ursf);
	}

	@RequestMapping(value="/admin-manager/showMyInfo",method=RequestMethod.GET)
	@ResponseBody
	public User showMyIfo() {
		return userService.findOne(2);
	}

	@RequestMapping(value="/admin-manager/users/byName",method=RequestMethod.GET)
	@ResponseBody
	public List<User> showNewUsers(@RequestParam String name) {
		return userService.findUsersByName(name);
	}

	@RequestMapping(value="/admin-manager/users/rolesByName",method=RequestMethod.GET)
	@ResponseBody
	public List<UserRole> showRolesOfUsers(@RequestParam Integer id) {
		return userService.findByUser(userService.findOne(id));
	}

	@RequestMapping(value="/admin-manager/users/setRoleForUser",method=RequestMethod.PUT,produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public UserRole setRoleForUser(@RequestBody UserRoleParser urp) {		
		return userService.setRoleForUser(urp.getRole(), urp.getId());
	}

	@RequestMapping(value="/admin-manager/newUsers/byRoleAndStatus",method=RequestMethod.GET)
	@ResponseBody
	public Page<UserRole> showNewUsersByRoleAndStatus(@RequestParam String role, @RequestParam Integer requestedPage, @RequestParam Integer pageSize) {
		Page<UserRole> resultOfQuery = userService.findUsersByRoleAndStatus(Role.valueOf(("Role_" + role).toUpperCase()), Status.PENDING, new PageRequest(requestedPage, pageSize));
		return resultOfQuery;
	}

	@RequestMapping(value="/admin-manager/cardRecs/getCardRecords",method=RequestMethod.GET)
	@ResponseBody
	public List<CardRecord> showAllCardRecords() {
		return cardRecordService.findAllCardRecords();
	}

	@RequestMapping(value="/admin-manager/chart/getMothIllNess",method=RequestMethod.GET)
	@ResponseBody
	public List<Long> showMonthIllness() {
		return cardRecordService.showMonthIllness();
	}

	@RequestMapping(value="/admin-manager/chart/getMothIllNessForYear",method=RequestMethod.GET)
	@ResponseBody
	public List<Long> showMonthIllnessForYear(@RequestParam Integer year) {
		return cardRecordService.showMonthIllnessForYear(year);
	}

	@RequestMapping(value="/admin-manager/chart/getYears",method=RequestMethod.GET)
	@ResponseBody
	public List<Long> showYears() {
		return cardRecordService.showYears();
	}

	@RequestMapping(value="/admin-manager/chart/getCountDisByCountries",method=RequestMethod.GET)
	@ResponseBody
	public Object[][] countDiseaseByCountries(@RequestParam Integer diseaseId) {
		return cardRecordService.countDiseaseByCountries(diseaseId);
	}

	@RequestMapping(value="/admin-manager/chart/getCountDisByRegion",method=RequestMethod.GET)
	@ResponseBody
	public Object[][] countDiseaseByRegion(@RequestParam Integer diseaseId, @RequestParam String countryISO3) {		
		return cardRecordService.countDiseaseByRegion(diseaseId, countryISO3);
	}

	@RequestMapping(value="/admin-manager/cardRecs/showDoctors",method=RequestMethod.GET)
	@ResponseBody
	public Object[][] findDoctorsLoads() {
		return cardRecordService.findDoctorsLoads();
	}

	@RequestMapping(value="/admin-manager/cardRecs/assignDoctor",method=RequestMethod.PUT)
	@ResponseBody
	public List<CardRecord> cardRecordDoctorAssign(@RequestBody DoctorAssigningFormatter daf) {
		return cardRecordService.updateCardRecordsWithDoctor(daf.getCardRecordIds(), daf.getDoctorId());
	}
}
