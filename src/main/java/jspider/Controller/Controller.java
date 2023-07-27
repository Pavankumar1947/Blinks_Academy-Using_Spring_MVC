package jspider.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import jspider.Dto.Hr;
import jspider.Dto.Management;
import jspider.Dto.Student;

@org.springframework.stereotype.Controller
public class Controller {
	@Autowired
	Management management;
	
	@Autowired
	Student student;
	
	@Autowired
	Hr hr;
	
	@PostMapping("signup")
	public ModelAndView signup(@RequestParam String role){
		ModelAndView andView=new ModelAndView();
		if(role.equals("management")){
			andView.setViewName("ManagementSignup.jsp");
			andView.addObject("management", management);
		}
		else if(role.equals("hr")){
			andView.setViewName("HrSignup.jsp");
			andView.addObject("hr",hr);
		}
		else{
			andView.setViewName("StudentSignup.jsp");
			andView.addObject("student",student);
		}
		return andView;
	}
}
