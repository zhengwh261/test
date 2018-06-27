package com.nenu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nenu.model.Blog;
import com.nenu.model.User;
import com.nenu.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nenu.service.UserService;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class CMSController {

	@Autowired
	private UserService userService;

	@Autowired
	private BlogService blogService;



	/**
	 * 后台首页
	 *
	 * @return
	 */
	@RequestMapping(value = "cms/cmsHome", method = RequestMethod.GET)
	public String cmsHome() {
		return "cms/cmsHome";
	}

	/**
	 * 后台管理首页
	 * @return
	 */
	@RequestMapping(value = "/cms/index")
	public String cmsIndex() {
		return "cms/index";
	}
	/**
	 * 角色页面
	 * @return
	 */
	@RequestMapping("cms/permissionManage")
	public String toPermissionPage() {
		return "cms/permissionManage";
	}

	/**
	 * 角色管理界面
	 *
	 * @return
	 */
	@RequestMapping(value = "/cms/userManage")
	public ModelAndView userManage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cms/userManage");
		return mv;
	}

	/**
	 * 超级管理员后台博客列表
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping(value = "/cms/manage/list",method = RequestMethod.GET)
	public ModelAndView toManageList(@RequestParam(required = false, defaultValue = "1") Integer page,
							   @RequestParam(required = false, defaultValue = "5") Integer rows){
		ModelAndView mv = new ModelAndView();
		PageHelper.startPage(page, rows);
		List<Blog> list = blogService.selectAllBlog(page, rows);
		PageInfo<Blog> p = new PageInfo<Blog>(list);
		mv.addObject("page", p);
		mv.setViewName("/cms/blog_list");
		return mv;
	}

	/**
	 * 管理员去添加页面
	 * @return
	 */
	@RequestMapping(value = "/cms/toAddBlog")
	public String toAddBlog() {
		return "cms/blog_add";
	}


	/**
	 * 管理员提交博客
	 * @param blog
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/cms/submitBlog", method = RequestMethod.POST)
	public String submitBlog(Blog blog,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		int userId = ((User) session.getAttribute("loginUser")).getId();
		try {
			blog.setCreateTime(new Date());
			User loginUser = (User) session.getAttribute("loginUser");
			blog.setUserId(loginUser.getId());
			blog.setAuthor(loginUser.getUsername());
			blogService.insert(blog);


//
		} catch (Exception e) {
//            mv.setViewName("error/errorPage");
			e.printStackTrace();
		}
		return "redirect:/cms/manage/list";
	}

	/**
	 * 管理员去更新页面
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/cms/toupdate", method = RequestMethod.GET)
	public ModelAndView toupdate(@RequestParam(value = "id") Integer id){
		ModelAndView mv = new ModelAndView();
		Blog blog =  blogService.selectById(id);

		mv.addObject("blog", blog);

		mv.setViewName("/cms/blog_update");
		return mv;




	}

	/**
	 * 管理员更新博客
	 * @param blog
	 * @return
	 */

	@RequestMapping(value = "/cms/update/blog", method = RequestMethod.POST)
	public String update(Blog blog){
		blog.setCreateTime(new Date());
		blogService.updateBlog(blog);
		return "redirect:/cms/manage/list";
	}


	/**
	 * 管理员删除博客
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/cms/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(value = "id") Integer id) {


		blogService.deleteById(id);

		return "redirect:/cms/manage/list";
	}

	/**
	 * 管理员去详情页面
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/cms/blogContents")
	public ModelAndView blogContents(Integer id) {
		Blog blog = blogService.selectById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("blog", blog);
		mv.setViewName("/cms/blogContents");
		return mv;
	}



	@RequestMapping("/cms/userList")
	public String userList(){

		return "cms/userList";
	}


	@ResponseBody
	@RequestMapping("/cms/AllUser")
	public List<User> getAllUser(){

		return userService.selectAll();
	}



}
