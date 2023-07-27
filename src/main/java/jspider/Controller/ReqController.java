package jspider.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jspider.Dto.Req;
import jspider.service.ReqService;

@Controller
public class ReqController {
	
	
	@Autowired
	ReqService reqService;
	

	
	@RequestMapping("/loadReq")                //load the data
	public ModelAndView loadManager()
	{
		ModelAndView modelAndView=new ModelAndView ("PostRequirements.jsp");
		Req req =new Req();
		modelAndView.addObject ("req",req);
		return modelAndView;
	}
	
	
	@RequestMapping("/postrequirementsmgmt")      //post the requirement(data sended to the database)
	public ModelAndView postReq(@ModelAttribute Req req) {
		Req req2= reqService.postReq(req);
		if(req2!=null) {
			ModelAndView modelAndView = new ModelAndView("ManagementHome.jsp");
			modelAndView.addObject("msg","Req Added Succesfullly");
			return modelAndView;
		}
		ModelAndView modelAndView = new ModelAndView("PostRequirements.jsp");
		modelAndView.addObject("msg","Error Posting Requirements");
		return modelAndView;
	}
	
	@RequestMapping("/requirementsList")       //view the requirements with edit and delete the requirements
	public ModelAndView requirementsList() {
		List<Req> reqs = reqService.fetchallrequirements();
		ModelAndView modelAndView = new ModelAndView("requirementslist.jsp");
		modelAndView.addObject("reqs",reqs);
		return modelAndView;
	}
	
	
	@RequestMapping("/deleteRequirement")   // delete the requirements
	public ModelAndView deleteRequirement(@RequestParam int Id) {
		reqService.deleteRequirement(Id);
		ModelAndView modelAndView = new ModelAndView("/requirementsList");
		modelAndView.addObject("msg","Data Updated Succesfully");
		return modelAndView;
	}
	
	@RequestMapping("/updateRequirement")      // update the requirement(to find the perticular id, which req u want to edit
	public ModelAndView updateRequirement(@RequestParam int Id) {
		Req req = reqService.searchRequirement(Id);
		ModelAndView modelAndView = new ModelAndView("updateRequirement.jsp");
		modelAndView.addObject("req",req);
		return modelAndView;
	}
	
	@RequestMapping("/updaterequirement1") // update the req
	public ModelAndView updaterequirement1(@ModelAttribute Req req) {
		reqService.updateRequirement(req);
		ModelAndView modelAndView = new ModelAndView("/requirementsList");
		modelAndView.addObject("msg","Data added Succesfully");
		return modelAndView;
	}
	
	
	@RequestMapping("/viewrequirementsList")  // view All the requirements
	public ModelAndView viewrequirementsList() {
		List<Req> reqs = reqService.viewallrequirements();
		ModelAndView modelAndView = new ModelAndView("viewRequirements.jsp");
		modelAndView.addObject("reqs",reqs);
		return modelAndView;
	}
	
	
	
	

	
}
