package jspider.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import jspider.Dto.Hr;

@SuppressWarnings("unchecked")

@Component
public class HrDao {
	
	@Autowired
	EntityManagerFactory factory;
	
	
	
	public void save(Hr hr) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		
		transaction.begin();
		manager.persist(hr);
		transaction.commit();
	}

	

	public Hr login(String username ) {
		EntityManager manager = factory.createEntityManager();
		List<Hr> list =manager.createQuery("select x from Hr x where username=?1").setParameter(1, username).getResultList();
		if(list.isEmpty()) {
			return null;
		}
		else {
			return list.get(0);
		}
	}



	public List<Hr> getAllHrs() {
		EntityManager manager = factory.createEntityManager();
		return manager.createQuery("select x from Hr x").getResultList();
	}
	
	
	public List<Hr> getAllHrByName(String branch) {
		EntityManager manager = factory.createEntityManager();
		return manager.createQuery("select x from Hr x where branch=?1").setParameter(1, branch).getResultList();
	}
	
	public Hr findById(int id) {
		EntityManager manager=factory.createEntityManager();
		return manager.find(Hr.class, id);
	}
	
	public void update(Hr hr) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		transaction.begin();
		manager.merge(hr);
		transaction.commit();
	}
	
	
	
	
}
