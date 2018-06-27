package com.nenu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.nenu.model.Blog;


public interface BlogDao {
	//提交博客
	void insertBlog(Blog blog);
	
	void deleteById(Integer id);
	
	Blog selectById(Integer id);
	//更新博客
	void updateBlog(Blog blog);
	
	//根据用户ID获取博客列表
	List<Blog> selectAllByUserId(@Param("userId")Integer userId,@Param("page")int page,@Param("rows")int rows);
	
	//搜索博客
	List<Blog> selectByKeyword(@Param("keyword")String keyword,@Param("page")int page,@Param("rows")int rows);

	//所有博客
	List<Blog> selectAllBlog(@Param("page")int page,@Param("rows")int rows);

	//根据用户ID和关键字查询记录
	Blog queryByKeyWord(@Param("keyword") String keyword,@Param("userId") int userId);
}
