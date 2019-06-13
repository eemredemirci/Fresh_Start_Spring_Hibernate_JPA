package com.MovieSuggest.controller;

import com.MovieSuggest.entity.User;

public interface UserDAO {
	
	public void createUser(User user);
	public User getUser(User user);

}
