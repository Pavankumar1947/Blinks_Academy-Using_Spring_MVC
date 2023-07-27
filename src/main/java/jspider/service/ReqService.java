package jspider.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import jspider.Dao.ReqDao;
import jspider.Dto.Req;

@Component
public class ReqService {
	
	@Autowired
	ReqDao reqDao;
	
	public Req postReq(Req req) {
		return reqDao.postReq(req);
	}


	public List<Req> fetchallrequirements() {
		return reqDao.fetchallrequirements();
	}


	public void deleteRequirement(int id) {
		reqDao.deleteRequirement(id);
	}
	
	public void updateRequirement(Req req) {
		reqDao.updateRequirement(req);
		
	}


	public Req searchRequirement(int id) {
		return reqDao.searchRequirement(id);
	}


	public List<Req> viewallrequirements() {
		return reqDao.viewallrequirements();
	}


	

	

}
