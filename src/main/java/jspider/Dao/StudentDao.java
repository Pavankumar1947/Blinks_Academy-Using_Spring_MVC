package jspider.Dao;

import java.util.List;



import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import jspider.Dto.Hr;
import jspider.Dto.Student;

@SuppressWarnings("unchecked")

@Component
public class StudentDao {
	@Autowired
	EntityManagerFactory factory;
	
	public void saveStd(Student student) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(student);
		transaction.commit();	
	}
	
	public Student login(String username) {
		EntityManager manager= factory.createEntityManager();
		
		List<Student> list = manager.createQuery("select x from Student x where username=?1").setParameter(1, username).getResultList();
		if(list.isEmpty()) {
			return null;
		}
		else {
			return list.get(0);
		}
	}


	public List<Student> getAllStudents() {
		EntityManager manager = factory.createEntityManager();
		return manager.createQuery("select x from Student x").getResultList();
	}

//	public Student getStudentById(int id) {
//		EntityManager manager = factory.createEntityManager();
//		return  manager.find(Student.class, id);
//	}

//	public void updateStudent(Student student) {
//		EntityManager manager = factory.createEntityManager();
//		EntityTransaction transaction = manager.getTransaction();
//
//		transaction.begin();
//		manager.merge(student);
//		transaction.commit();
//	}

	public List<Student> getAvailbaleStudents() {
		EntityManager manager = factory.createEntityManager();
		return manager.createQuery("select x from Student x where status='Available'").getResultList();
	}

	public Student findById(int id) {
		EntityManager manager=factory.createEntityManager();
		return manager.find(Student.class, id);
	}

	public void update(Student student) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		transaction.begin();
		manager.merge(student);
		transaction.commit();
		
	}

}
