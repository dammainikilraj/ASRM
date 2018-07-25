package com.asrm.login;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.asrm.model.StudentAssgDetails;
import com.asrm.model.StudentLogin;
import com.asrm.model.StudentRegistration;
import com.asrm.service.StudentService;

@Controller
@Scope("session")
public class LoginController {

	@Autowired
	HttpSession session;

	@Autowired
	HttpServletRequest request;

	@Autowired
	StudentService studentService;
	
	@Value("${student.assg.details.year}")
	private String yearList2;
	
	@Value("${student.assg.details.sem}")
	private String semList2;
	
	@Value("${student.assg.details.subject}")
	private String subjectList2;

	String userName1 = null;
	String userName = null;
	String getUserPassFromDB;
	String firstTimeLoginFlag = null;

	private static final Logger log = Logger.getLogger(LoginController.class);

	@RequestMapping(value = "/loginForm.html", method = RequestMethod.GET)
	public String login(@ModelAttribute("studentLogin") StudentLogin studentLogin, ModelMap map) {
		log.info("in login get method==============");
		return "signinform";
	}

	@RequestMapping(value = "/loginForm.html", method = RequestMethod.POST)
	public String loginPost(@ModelAttribute("studentLogin") StudentLogin studentLogin, ModelMap map) {
		log.info("in login post method==============");

		List<StudentLogin> loginDetails = studentService.getLoginList(studentLogin.getUserName(),
				studentLogin.getPassword());
		String roleId = null;
		for (StudentLogin studentLogin2 : loginDetails) {
			userName = studentLogin2.getUserName();
			getUserPassFromDB = studentLogin2.getPassword();

		}

		userName1 = studentLogin.getUserName();
		 
		session.setAttribute("currentUser", userName1);
		if (studentLogin.getUserName().equals(userName) && studentLogin.getPassword().equals(getUserPassFromDB)) {
			session.setAttribute("userName", userName);
			session.setAttribute("name", userName);
			map.addAttribute("userName",userName);
			//StudentRegistration studentRegistration = studentService.getDetailsFromRegistrationPage(studentLogin);
			return "mainPage";
		} else {
			map.addAttribute("userNotFound", "Please enter valid credentials");
			return "signinform";
		}

	}
	
	@RequestMapping(value = "/addStudentAssgDetails.html", method = RequestMethod.GET)
	public String addStudentAssgDetails(@ModelAttribute("studentAssgDetails") StudentAssgDetails studentAssgDetails, ModelMap map) {
		log.info("in login get method==============nikil");
		
		List<String> yearList = null;
		List<String> yearList1 = new ArrayList<>();
		List<String> semList = null;
		List<String> semList1 = new ArrayList<>();
		List<String> subjectList = null;
		List<String> subjectList1 = new ArrayList<>();
		
		
		yearList = Arrays.asList(yearList2.split(","));
		for (String string : yearList) {
			yearList1.add(string);
		}
		
		semList = Arrays.asList(semList2.split(","));
		for (String string : semList) {
			semList1.add(string);
		}
		
		subjectList = Arrays.asList(subjectList2.split(","));
		for (String string : subjectList) {
			subjectList1.add(string);
		}
		
		map.addAttribute("yearList1", yearList1);
		map.addAttribute("semList1", semList1);
		map.addAttribute("subjectList1", subjectList1);
		return "addStudentAssgDetails";
	}
	
	@RequestMapping(value = "/addStudentAssgDetails.html", method = RequestMethod.POST)
	public String submitAddStudentAssgDetails(@ModelAttribute("studentAssgDetails") StudentAssgDetails studentAssgDetails, ModelMap map) {
		List<String> yearList = null;
		List<String> yearList1 = new ArrayList<>();
		List<String> semList = null;
		List<String> semList1 = new ArrayList<>();
		List<String> subjectList = null;
		List<String> subjectList1 = new ArrayList<>();
		log.info("addStudentAssgDetails.html post method==============");
		
		String msg=studentService.submitStudentAssgDetails(studentAssgDetails);
		if (msg !=null) {
			map.addAttribute("msg", msg);
			map.addAttribute("studentAssgDetails", new StudentAssgDetails());
		}
		
		
		yearList = Arrays.asList(yearList2.split(","));
		for (String string : yearList) {
			yearList1.add(string);
		}
		
		semList = Arrays.asList(semList2.split(","));
		for (String string : semList) {
			semList1.add(string);
		}
		
		subjectList = Arrays.asList(subjectList2.split(","));
		for (String string : subjectList) {
			subjectList1.add(string);
		}
		
		map.addAttribute("yearList1", yearList1);
		map.addAttribute("semList1", semList1);
		map.addAttribute("subjectList1", subjectList1);
		return "addStudentAssgDetails";
	}
	
	@RequestMapping(value="/viewStudentAssgDetails.html",method=RequestMethod.GET)
	public String viewAssgDetails(ModelMap map) throws JsonGenerationException, JsonMappingException, IOException{
		ObjectMapper mapper = new ObjectMapper();
		List<StudentAssgDetails> studentAssgList=studentService.getAssgList();
		if (!studentAssgList.isEmpty()) {
			map.addAttribute("studentAssgList", mapper.writeValueAsString(studentAssgList));
		}
		return "viewAssignments";
	}
	
	@RequestMapping(value="/addEvaluator.html",method=RequestMethod.GET)
	public String addEvaluator(@ModelAttribute("addEvaluator") StudentRegistration addEvaluator){
		return "addEvaluator";
	}
}
