package com.hotel.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.entity.Customer;
import com.hotel.entity.Order;
import com.hotel.service.OrderService;

@Controller
public class OrderController {
	@Resource(name = "orderService")
	OrderService orderService;

	@RequestMapping(value = "/OrderAddServlet", method = RequestMethod.POST)
	public String OrderAddServlet(HttpServletRequest request, HttpServletResponse response,
			@RequestParam int c_type_id, @RequestParam String m_id, @RequestParam int r_type_id,
			@RequestParam String r_no, @RequestParam String ord_time, @RequestParam String remark) throws IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Order order = new Order(c_type_id, m_id, r_type_id, r_no, ord_time, remark);
		int i = orderService.save(order);
		if (i > 0) {
			System.out.println("======");
			out.println("<div align=\"center\">添加订单成功，请返回<a href=\"index.jsp\">主页</a></div>");
//			response.sendRedirect("CustomerListServlet");
//			return "redirect:/CustomerListServlet";
		} else {
			out.print("<script>alter('添加订单失败');history.go(-1);</script>");
		}
		out.flush();
		out.close();
		return null;
	}

}
