package jspider.Dao;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import jspider.Dto.Hr;
import jspider.Dto.Req;
@SuppressWarnings("unchecked")

@Component
public class ReqDao {
	
	@Autowired
	EntityManagerFactory factory;

	

	public Req postReq(Req req) {         //save the req (sent to database)
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		
		transaction.begin();
		manager.persist(req);
		transaction.commit();
		return req;
	}



	public List<Req> fetchallrequirements() {  // view all req(with edit and delete option)
		EntityManager entityManager = factory.createEntityManager();
		Query query = entityManager.createQuery(" select s from Req s",Req.class);
		List<Req> reqs= query.getResultList();
		return reqs;
	}



	public void deleteRequirement(int id) {   //delete the req
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		Req req = manager.find(Req.class, id);
		transaction.begin();
		manager.remove(req);
		transaction.commit();
	}

	public void updateRequirement(Req req) {  // update the req
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.merge(req);
		transaction.commit();
	}

	public Req searchRequirement(int id) {   // update the requirement(to find the perticular id, which req u want to edit
		EntityManager manager = factory.createEntityManager();
		return manager.find(Req.class, id);
	}



	public List<Req> viewallrequirements() {   //view all req
		EntityManager entityManager = factory.createEntityManager();
		Query query = entityManager.createQuery(" select s from Req s",Req.class);
		List<Req> reqs= query.getResultList();
		return reqs;
	}



	



	



	

	



}
