package com.hotel.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.entity.Customer;
import com.hotel.service.CustomerService;

@Controller
public class CustomerController {
	@Resource(name = "customerService")
	CustomerService customerService;

	@RequestMapping(value = "/CustomerLoginServlet", method = RequestMethod.POST)
	public String CustomerLoginServle(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@RequestParam String userid, @RequestParam String password) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Customer customer = customerService.findByNameAndPwd(userid, password);
		System.out.println(customer);
		if (null == customer) {
			out.print("<script>alert('用户名密码错误');history.go(-1);</script>");
			return null;
		} else {
			request.getSession().setAttribute("user", customer.getUserid());
			request.getSession().setAttribute("customer", customer);
			session.setAttribute("pwd", customer);
			return "redirect:/index.jsp";
		}
	}

	@RequestMapping(value = "/CustomerRegServlet", method = RequestMethod.POST)
	public String CustomerRegServlet(HttpServletRequest request, HttpServletResponse response,
			@RequestParam String customeruserid, @RequestParam String customerpwd, @RequestParam int customertypeid,
			@RequestParam String customerid, @RequestParam String customername, @RequestParam String customersex,
			@RequestParam String customerhao, @RequestParam String customertel, @RequestParam String customerremark)
			throws IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Customer customer = new Customer(customeruserid, customerpwd, customertypeid, customerid, customername,
				customersex, customerhao, customertel, customerremark);
		int i = customerService.save(customer);
		if (i > 0) {
			System.out.println("======");
			out.println("<div align=\"center\">注册成功，请登录<a href=\"login.jsp\">登录</a></div>");
//			response.sendRedirect("index.jsp");
//			return "redirect:/CustomerListServlet";
		} else {
			out.print("<script>alter('用户注册失败');history.go(-1);</script>");
		}
		out.flush();
		out.close();
		return null;
	}
	
	@RequestMapping(value = "/CustomerAddServlet", method = RequestMethod.POST)
	public String CustomerAddServlet(HttpServletRequest request, HttpServletResponse response,
			@RequestParam String customeruserid, @RequestParam String customerpwd, @RequestParam int customertypeid,
			@RequestParam String customerid, @RequestParam String customername, @RequestParam String customersex,
			@RequestParam String customerhao, @RequestParam String customertel, @RequestParam String customerremark)
			throws IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Customer customer = new Customer(customeruserid, customerpwd, customertypeid, customerid, customername,
				customersex, customerhao, customertel, customerremark);
		int i = customerService.save(customer);
		if (i > 0) {
			System.out.println("======");
			response.sendRedirect("CustomerListServlet");
//			return "redirect:/CustomerListServlet";
		} else {
			out.print("<script>alter('添加用户失败');history.go(-1);</script>");
		}
		out.flush();
		out.close();
		return null;
	}

	@RequestMapping(value = "/CustomerListServlet", method = RequestMethod.GET)
	public String CustomerListServlet(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws IOException, ServletException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;cahrset=utf-8");
		List<Customer> customers = customerService.findAll();
		request.setAttribute("cuslst", customers);
		session.setAttribute("cuslst", customers);
		request.getRequestDispatcher("admin/html/customer_list.jsp").forward(request, response);
		return null;
	}

	@RequestMapping(value = "/CustomerDeleteServlet", method = RequestMethod.GET)
	public String CustomerDeleteServlet(HttpServletResponse response, @RequestParam int id)
			throws IOException, ServletException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		customerService.delete(id);
		response.sendRedirect("CustomerListServlet");
		out.flush();
		out.close();
		return null;

	}

	@RequestMapping(value = "/CustomerOneServlet", method = RequestMethod.GET)
	public String CustomerOneServlet(HttpServletRequest request, HttpServletResponse response, @RequestParam int id)
			throws IOException, ServletException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Customer customer = customerService.findByPk(id);
		request.setAttribute("customer", customer);
		request.getRequestDispatcher("admin/html/customer_update.jsp").forward(request, response);
		out.flush();
		out.close();
		return null;
	}

	@RequestMapping(value = "/CustomerUpdateServlet", method = RequestMethod.POST)
	public String CustomerUpdateServlet(HttpServletResponse response, @RequestParam int customerpk,
			@RequestParam String customeruserid, @RequestParam String customerpwd, @RequestParam int customertypeid,
			@RequestParam String customerid, @RequestParam String customername, @RequestParam String customersex,
			@RequestParam String customerhao, @RequestParam String customertel, @RequestParam String customerremark)
			throws IOException, ServletException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Customer customer = new Customer(customerpk, customeruserid, customerpwd, customertypeid, customerid,
				customername, customersex, customerhao, customertel, customerremark);
		customerService.update(customer);
		response.sendRedirect("CustomerListServlet");
		out.flush();
		out.close();
		return null;
	}
}
