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
import jspider.Dao.StudentDao;
import jspider.Dto.Hr;
import jspider.Dto.Student;

@Controller
public class StudentController {
	@Autowired
	StudentDao studentDao;
	
	@Autowired
	HrDao hrDao;
	
	
	@PostMapping("studentsignup")
	public ModelAndView saveStudent(@ModelAttribute Student student) {
//		student.setStatus("Pending");
		studentDao.saveStd(student);
		ModelAndView view = new ModelAndView("LoginPage.jsp");
		view.addObject("msg","Student Account got Created");
		return view;
	}
	

	
	@PostMapping("StudentLogin")
	public ModelAndView loginStudent(@RequestParam String username, @RequestParam String password,HttpSession session) {
		ModelAndView andView = new ModelAndView();

		Student  student  = studentDao.login(username);
		if (student == null) {
			andView.setViewName("StudentLogin.jsp");
			andView.addObject("msg", "Invalid Username");
		} else {
			session.setAttribute("student", student);
			if (student.getPassword().equals(password)) {
				andView.setViewName("StudentHome.jsp");
				andView.addObject("msg", "Login Succes");
			} else {
				andView.setViewName("StudentLogin.jsp");
				andView.addObject("msg", "Invalid password");
			}
		}
		return andView;
	}
	
	
	@RequestMapping("viewallstudents")
	public ModelAndView viewAllstudents() {
		ModelAndView andView = new ModelAndView();
		List<Student>students= studentDao.getAllStudents();
		if(students.isEmpty()) {
			andView.setViewName("ManagementHome.jsp");
			andView.addObject("msg","They Are No Students");
			return andView;
		}else {
			andView.setViewName("viewallstudents.jsp");
			andView.addObject("students",students);
			return andView;
		}
	}
	
//	@RequestMapping("changestudentstatus")
//	public String changestatus(@RequestParam int id)
//	{
//		Student student=studentDao.getStudentById(id);
//		String status=student.getStatus();
//		if(status.equals("Pending"))
//		{
//			student.setStatus("Available");
//		}
//		else if(status.equals("Available"))
//		{
//			student.setStatus("Pending");
//		}
//		else {
//			
//		}
//		
//		studentDao.updateStudent(student);
//		return "viewallplayers";
//	}
	
	
	@RequestMapping("changestudentstatus")
	public String changeStatus(@RequestParam int id) {
		Student student=studentDao.findById(id);
		if(student.isStatus()) {
			student.setStatus(false);
		}else 
			student.setStatus(true);
			studentDao.update(student);
			return "viewallstudents";
		}
	
	
	@RequestMapping("viewavailable")
	public ModelAndView viewAvailable(HttpSession session)
	{
		Hr hr =(Hr)session.getAttribute("hr");
		ModelAndView andView=new ModelAndView();
		List<Student> students=studentDao.getAvailbaleStudents();
		if(students.isEmpty())
		{
			andView.setViewName("HrHome.jsp");
			andView.addObject("HRBranch",hr.getBranch());
			return andView;
		}
		return andView;
	}
	
	
	



}
