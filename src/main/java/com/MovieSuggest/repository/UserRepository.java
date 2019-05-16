package com.MovieSuggest.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.MovieSuggest.entity.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{
	
}