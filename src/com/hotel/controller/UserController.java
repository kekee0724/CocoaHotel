package com.hotel.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;

import com.hotel.entity.User;
import com.hotel.service.UserService;

//controller 控制器
@Controller
//@RequestMapping("/user")
public class UserController {

	@Resource(name = "userService")
	UserService userService;

	/*
	 * 查询登录账号密码是否正确
	 */

	@RequestMapping(value = "/LoginServlet", method = RequestMethod.POST)
	public String LoginServlet(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam String userid, @RequestParam String password) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		User pwd = userService.findByNameAndPwd(userid, password);
		System.out.println(pwd);
		if (null == pwd) {
			out.print("<script>alert('用户名密码错误');history.go(-1);</script>");
			return null;
		} else {
			request.getSession().setAttribute("user", pwd.getUserid());
			request.getSession().setAttribute("pwd", pwd);
			session.setAttribute("pwd", pwd);
			return "redirect:admin/html/xs.jsp";
		}
	}

	@RequestMapping(value = "/AddUserServlet", method = RequestMethod.POST)
	public String AddUserServlet(HttpServletRequest request, HttpServletResponse response, @RequestParam String userid,
			@RequestParam String password) throws IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		User user = new User();
		user.setUserid(userid);
		user.setPwd(password);
		int i = userService.save(user);
		if (i > 0) {
			System.out.println("======");
			return "redirect:/UserListServlet";
		} else {
			out.print("<script>alter('添加用户失败');history.go(-1);</script>");
		}
		out.flush();
		out.close();
		return null;
	}

	@RequestMapping(value = "/UserListServlet", method = RequestMethod.GET)
	public String UserListServlet(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException, ServletException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;cahrset=utf-8");
		List<User> lst = userService.findAll();
		session.setAttribute("userlist", lst);
		request.setAttribute("userlist", lst);
		request.getRequestDispatcher("admin/html/user_list.jsp").forward(request, response);
		return null;
	}

	@RequestMapping(value = "/UserDeleteServlet", method = RequestMethod.GET)
	public String UserDeleteServlet(HttpServletResponse response, @RequestParam int id)
			throws IOException, ServletException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		userService.delete(id);
		response.sendRedirect("UserListServlet");
		out.flush();
		out.close();
		return null;

	}

	@RequestMapping(value = "/UserOneServlet", method = RequestMethod.GET)
	public String UserOneServlet(HttpServletRequest request, HttpServletResponse response, @RequestParam int id)
			throws IOException, ServletException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		User user = userService.findById(id);
		request.setAttribute("pwd", user);
		request.getRequestDispatcher("admin/html/user_update.jsp").forward(request, response);
		out.flush();
		out.close();
		return null;
	}

	@RequestMapping(value = "/UserUpdateServlet", method = RequestMethod.POST)
	public String UserUpdateServlet(HttpServletResponse response, @RequestParam int userpk, @RequestParam String userid,
			@RequestParam String xpassword) throws IOException, ServletException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		User user = new User(userpk, userid, xpassword);
		userService.update(user);
		response.sendRedirect("UserListServlet");
		out.flush();
		out.close();
		return null;
	}

}
