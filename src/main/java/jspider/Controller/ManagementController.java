package jspider.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jspider.Dao.ManagementDao;
import jspider.Dao.ReqDao;
import jspider.Dto.Management;
import jspider.Dto.Req;

@Controller
@Component
public class ManagementController {
	@Autowired
	ManagementDao managementDao;
	
	
	
	
	@PostMapping("managementsignup")
	public ModelAndView saveManagement(@ModelAttribute Management management) {
		managementDao.saveMgmt(management);
		ModelAndView view = new ModelAndView("LoginPage.jsp");
		view.addObject("msg","Management Account Got Created");
		return view;
		
	}
	
	@PostMapping("managementLogin")
	public ModelAndView loginManagement(@RequestParam String username, @RequestParam String password) {
		ModelAndView andView=new ModelAndView();	
		Management management=managementDao.login(username);
		
		if(management==null) {
			andView.setViewName("ManagementLogin.jsp");
			andView.addObject("msg", "Invalid User name");
		}
		else {
			if(management.getPassword().equals(password)) {
				andView.setViewName("ManagementHome.jsp");
				andView.addObject("msg","Login Success...");
			}else {
				andView.setViewName("ManagementLogin.jsp");
				andView.addObject("msg","Invalid password");
			}
		}
		return andView;
	}
	
	
	
	
	
	
	
	
	
	
}
