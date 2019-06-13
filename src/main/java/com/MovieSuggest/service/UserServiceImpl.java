package com.MovieSuggest.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MovieSuggest.entity.User;
import com.MovieSuggest.repository.UserRepository;

@Service
@Transactional
public class UserServiceImpl implements UserService {

		// Implementing Constructor based DI
		private UserRepository repository;
		
		public UserServiceImpl() {
			
		}
		
		@Autowired
		public UserServiceImpl(UserRepository repository) {
			super();
			this.repository = repository;
		}
	
		
		
		@Autowired
		SessionFactory sessionFactory;
		
		@Override
		public void createUser(User user) {
			Session session = sessionFactory.openSession();
			//	Transaction tx = session.beginTransaction();
				session.save(user);
			//	tx.commit();
				session.close();
			
		}

		@Override
		public User getUser(User user) {
			Session session = sessionFactory.openSession();
			Criteria criteria = null;
			User emp = null;
			try {
				criteria = session.createCriteria(User.class);
				Criterion criterion = Restrictions.eq("username",
						user.getUserName());
				criteria.add(criterion);

				criteria.setMaxResults(1);
				emp = (User) criteria.uniqueResult();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (session != null) {
					session.close();
				}
			}
			return emp;
		}
	@Override
	public List<User> getAllUsers() {
		List<User> list = new ArrayList<User>();
		repository.findAll().forEach(e -> list.add(e));
		return list;
	}

	@Override
	public User getUserById(Long id) {
		User user = repository.findById(id).get();
		return user;
	}

	@Override
	public boolean saveUser(User user) {
		try {
			repository.save(user);
			return true;
		}catch(Exception ex) {
			return false;
		}
	}

	@Override
	public boolean deleteUserById(Long id) {
		try {
			repository.deleteById(id);
			return true;
		}catch(Exception ex) {
			return false;
		}
		
	}

}
