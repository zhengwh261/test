package com.nenu.service;

import java.util.List;

import com.nenu.model.Blog;

public interface BlogService {

	void insert(Blog blog);
	
	void deleteById(Integer id);
	
	Blog selectById(Integer id);

	void updateBlog(Blog blog);
	
	List<Blog> selectAllbyUserId(Integer userId,Integer page,Integer rows);
	
	//搜索
	List<Blog> selectByKeyword(String keyword,Integer page,Integer rows);

	//得到所有博客
	List<Blog> selectAllBlog(Integer page,Integer rows);
	//根据用户ID和关键字查询
	Blog queryByKeyWord(String keyword,Integer userId);
}
