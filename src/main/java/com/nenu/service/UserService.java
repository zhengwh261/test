package com.nenu.service;

import com.nenu.model.User;

import java.util.List;


public interface UserService {
	List<User> selectAll();
	
	User selectById(Integer id);
	
	User selectByUsername(String username);
	
	void save(User user);
	
	boolean userIsExist(String username);
	
	void deleteById(Integer id);

	void blockUserById(Integer id);

	void unblockUserById(Integer id);
}
