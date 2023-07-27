package jspider.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import jspider.Dto.Batch;
@SuppressWarnings("unchecked")


@Component
public class BatchDao {
	
	@Autowired
	EntityManagerFactory factory;

	public Batch postBatch(Batch batch) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		
		transaction.begin();
		manager.persist(batch);
		transaction.commit();
		return batch;
	}

	public List<Batch> fetchallBatches() {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("select p from Batch p",Batch.class);
		List<Batch> batchs = query.getResultList();
		return  batchs;
	}

	public void deleteBatch(int id) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		
		Batch batch = manager.find(Batch.class, id);
		
		transaction.begin();
		manager.remove(batch);
		transaction.commit();
	}

	public Batch searchBatch(int id) {
		EntityManager manager = factory.createEntityManager();
		return manager.find(Batch.class, id);
	}

	public void updateBatch(Batch batch) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.merge(batch);
		transaction.commit();
	}
	
	

}
