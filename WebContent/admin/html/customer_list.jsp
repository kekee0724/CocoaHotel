<%@page import="com.hotel.entity.Customer"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Internet Dreams</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/admin/css/style.css"
	type="text/css" media="screen" title="default" />
</head>
<%
	List<Customer> lst = (List<Customer>) request.getAttribute("cuslst");
%>
<body>
	<div id="content-outer">
		<div id="content">
			<table border="0" width="100%" cellpadding="0" cellspacing="0"
				id="content-table">

				<tr>
					<td id="tbl-border-left"></td>
					<td>
						<!--  start content-table-inner ...................................................................... START -->
						<div id="content-table-inner">

							<!--  start table-content  -->
							<div id="table-content">

								<!--  start message-yellow -->

								<!-- <table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td  height="35"><a href="news_add.html" class="a_add">添加新闻</a>                 </td>
                    <td  height="35" align="center">
                    <table width="70%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="right">标题：</td>
                        <td width="180px"> <input type="text" class="search_input"></td>
                        <td align="left"><input type="image" src="../images/top_search_btn.gif"></td>
                      </tr>
                    </table>    </td>
				</tr>
				</table>
				-->

								<!--  start product-table ..................................................................................... -->
								<form id="mainform" action="">
									<table border="0" width="100%" cellpadding="0" cellspacing="0"
										id="product-table">
										<tr>
											<th class="table-header-check padtp"><a id="toggle-all"></a>
											</th>
											<th class="table-header-repeat line-left minwidth-1 padtp">客户类型编号</th>
											<th class="table-header-repeat line-left padtp">客户编号</th>
											<th class="table-header-repeat line-left padtp">客户姓名</th>
											<th class="table-header-repeat line-left padtp">客户性别</th>
											<th class="table-header-repeat line-left padtp">证件号</th>
											<th class="table-header-repeat line-left padtp">联系方式</th>
											<th class="table-header-repeat line-left padtp">客户习惯</th>
											<th class="table-header-options line-left padtp">操作</th>
										</tr>
										<%
											for (Customer customer : lst) {
										%>
										<tr>
											<td><input type="checkbox" /></td>
											<td><%=customer.getC_type_id()%></td>
											<td><%=customer.getM_id()%></td>
											<td><%=customer.getM_name()%></td>
											<td><%=customer.getSex()%></td>
											<td><%=customer.getZj_no()%></td>
											<td><%=customer.getM_tel()%></td>
											<td><%=customer.getRemark()%></td>
											<td class="options-width"><a
												href="<%=request.getContextPath()%>/admin/html/customer_add.jsp"
												title="Add" class="icon-3 info-tooltip"></a> <a
												href="<%=request.getContextPath()%>/CustomerOneServlet?id=<%=customer.getPk()%>"
												title="Update" class="icon-1 info-tooltip"></a> <a
												href="<%=request.getContextPath()%>/CustomerDeleteServlet?id=<%=customer.getPk()%>"
												onclick="javascript:return confirm('确定删除该条信息')"
												title="Delete" class="icon-2 info-tooltip"></a></td>
										</tr>
										<%
											}
										%>
									</table>
									<!--  end product-table................................... -->
								</form>
							</div>
							<!--  end content-table  -->

							<!--  start actions-box ............................................... -->

							<!-- end actions-box........... -->

							<!--  start paging..................................................... -->
							<table border="0" cellpadding="0" cellspacing="0"
								id="paging-table">
								<tr>
									<td><a href="" class="page-far-left"></a> <a href=""
										class="page-left"></a>
										<div id="page-info">
											Page <strong>1</strong> / 15
										</div> <a href="" class="page-right"></a> <a href=""
										class="page-far-right"></a></td>
									<td><select class="styledselect_pages">
											<option value="">快速翻页</option>
											<option value="">1</option>
											<option value="">2</option>
											<option value="">3</option>
									</select></td>
								</tr>
							</table>
							<!--  end paging................ -->

							<div class="clear"></div>
						</div> <!--  end content-table-inner ............................................END  -->
					</td>
					<td id="tbl-border-right"></td>
				</tr>
				<tr>
					<th class="sized bottomleft"></th>
					<td id="tbl-border-bottom">&nbsp;</td>
					<th class="sized bottomright"></th>
				</tr>
			</table>
			<div class="clear">&nbsp;</div>

		</div>
		<!--  end content -->
		<div class="clear">&nbsp;</div>
	</div>
	<!--  end content-outer........................................................END -->

</body>
</html>