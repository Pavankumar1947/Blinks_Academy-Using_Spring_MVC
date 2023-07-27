package jspider.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import jspider.Dao.BatchDao;
import jspider.Dto.Batch;

@Component
public class BatchService {
	
	@Autowired
	BatchDao batchDao;

	

	public Batch postBatch(Batch batch) {
		return  batchDao.postBatch(batch);
	}



	public List<Batch> fetchallBatches() {
		// TODO Auto-generated method stub
		return batchDao.fetchallBatches();
	}



	public void deleteBatch(int id) {
		batchDao.deleteBatch(id);
		
	}



	public Batch searchBatch(int id) {
		return batchDao.searchBatch(id);
	}



	public void updateBatch(Batch batch) {
		batchDao.updateBatch(batch);
	}

	
	

}
