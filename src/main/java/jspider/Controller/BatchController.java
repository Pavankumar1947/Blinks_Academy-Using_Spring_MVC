package jspider.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jspider.Dto.Batch;
import jspider.Dto.Req;
import jspider.service.BatchService;

@Controller
public class BatchController {
	
	@Autowired
	BatchService batchService;
	
	@RequestMapping("/loadBatch")
	public ModelAndView loadManager() {
		ModelAndView modelAndView= new ModelAndView("createBatch.jsp");
		Batch batch = new Batch();
		modelAndView.addObject("batch",batch);
		return modelAndView;
	}
	
	@RequestMapping("/createBatch")
	public ModelAndView postBatch(@ModelAttribute Batch batch) {
		Batch batch2 = batchService.postBatch(batch);
		if( batch2 != null) {
			ModelAndView modelAndView = new ModelAndView("ManagementHome.jsp");
			modelAndView.addObject("msg","Batch Added Succesfully");
			return  modelAndView;
		}
		ModelAndView modelAndView = new ModelAndView("createBatch.jsp");
		modelAndView.addObject("msg","error Occured");
		return modelAndView;
	}
	
	
	@RequestMapping("/batchList")
	public ModelAndView requirementsList() {
		List<Batch> batchs = batchService.fetchallBatches();
		ModelAndView modelAndView = new ModelAndView("batchList.jsp");
		modelAndView.addObject("batchs",batchs);
		return modelAndView;
	}
	
	@RequestMapping("/deleteBatch")
	public ModelAndView deleteRequirement(@RequestParam int Id) {
		batchService.deleteBatch(Id);
		ModelAndView modelAndView = new ModelAndView("/batchList");
		modelAndView.addObject("msg","Data Updated Succesfully");
		return modelAndView;
	}
	
	
	@RequestMapping("/updateBatch")
	public ModelAndView updateBatch(@RequestParam int Id) {
		Batch batch  = batchService.searchBatch(Id);
		ModelAndView modelAndView = new ModelAndView("updateBatch.jsp");
		modelAndView.addObject("batch",batch);
		return modelAndView;
	}
	
	
	@RequestMapping("/updatebatch1")
	public ModelAndView updatebatch1(@ModelAttribute Batch batch) {
		batchService.updateBatch(batch);
		ModelAndView modelAndView = new ModelAndView("/batchList");
		modelAndView.addObject("msg","Data added Succesfully");
		return modelAndView;
	}
	
	
	
	

	
	
			

}
