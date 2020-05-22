<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="top_frame">
  <ul>
    <li><a href="main.jsp" target="mainFrame" class="t_desc" title="我的桌面">我的桌面</a></li>
    <li><a href="<%=request.getContextPath() %>/UserListServlet" target="mainFrame" class="t_acc" title="账户信息">账户信息</a></li>
    <li><a href="#" class="t_msg" title="我的消息">我的消息</a></li>
    <li><a href="#" class="t_set"  title="系统设置">系统设置</a></li>
    <li><a href="#" class="t_theme" title="切换风格">切换风格</a></li>
    <li><a href="#" class="t_max"  title="最大化工作区">收缩/扩展</a></li>
    <li><a href="#" class="t_copy" title="系统版权">系统版权</a></li>
    
  </ul>
</div>
</body>
</html>
