package jspider.Controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import jspider.Dao.HrDao;
import jspider.Dao.ReqDao;
import jspider.Dao.StudentDao;
import jspider.Dto.Hr;
import jspider.Dto.Req;
import jspider.Dto.Student;

@Controller
public class HrController {
	@Autowired
	HrDao dao;
	
	@Autowired
	StudentDao Dao2;
	
	@Autowired
	ReqDao reqDao;
	
	
	

	@PostMapping("hrsignup")
	public ModelAndView saveManagement(@ModelAttribute Hr hr) {
		dao.save(hr);
		ModelAndView view = new ModelAndView("LoginPage.jsp");
		view.addObject("msg", "HR Account got Created");
		return view;
	}
	
	
	@PostMapping("hrlogin")
	public ModelAndView loginPlayer(@RequestParam String username, @RequestParam String password,HttpSession session) {
		ModelAndView andView = new ModelAndView();
		Hr hr = dao.login(username);
		if(hr==null){
			andView.setViewName("HrLogin.jsp");
			andView.addObject("msg", "Invalid username");
		}else {
			if(hr.getPassword().equals(password)) {
				if(hr.isStatus()) {
					session.setAttribute("hr", hr);
					andView.setViewName("HrHome.jsp");
					andView.addObject("HRname", hr.getHrname());
					andView.addObject("msg", "Login Succes");
				}else {
					andView.setViewName("HrLogin.jsp");
					andView.addObject("msg", "Contact Management For Activating Yours Account");
				}
					
			}else {
				andView.setViewName("hrLogin.jsp");
				andView.addObject("msg", "Invalid password");
			}
		}
		return andView;
	}
	
	
	@RequestMapping("changestatus")
	public String changeStatus(@RequestParam int id) {
		Hr hr=dao.findById(id);
		if(hr.isStatus()) {
			hr.setStatus(false);
		}else 
			hr.setStatus(true);
			dao.update(hr);
			return "ViewAllHr";
		}
	

	@RequestMapping("ViewAllHr")
	public ModelAndView viewAllHr() {
		ModelAndView andView= new ModelAndView();
		List<Hr> hrs = dao.getAllHrs();
		if(hrs.isEmpty()) {
			andView.setViewName("ManagementHome.jsp");
			andView.addObject("msg","There is No Hrs Present");
			return andView;
		}
		else {
			andView.setViewName("ViewAllHr.jsp");
			andView.addObject("hrs",hrs);
			return andView;
		}
	}
	

	
	
	
	
	

}