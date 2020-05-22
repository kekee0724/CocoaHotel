<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Internet Dreams</title>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen" title="default" />

</head>
<body>
<!-- start content-outer -->
<div id="content-outer">
  <!-- start content -->
  <div id="content">
    <table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
      <tr>
        <th rowspan="3" class="sized"><img src="../images/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
        <th class="topleft"></th>
        <td id="tbl-border-top">&nbsp;</td>
        <th class="topright"></th>
        <th rowspan="3" class="sized"><img src="../images/side_shadowright.jpg" width="20" height="300" alt="" /></th>
      </tr>
      <tr>
        <td id="tbl-border-left"></td>
        <td>
        <!--  start content-table-inner -->
        <div id="content-table-inner">
          <table border="0" width="100%" cellpadding="0" cellspacing="0">
           
            <tr>
                        <td height="50" valign="top"><div class="error-left"></div>
                            <div class="error-inner">
                              <h3 class="add">您当前的位置：客户管理 > 添加客户信息  </h3>
                            </div></td>
              </tr>
           
           
           
            <tr valign="top">
              <td>
              <!-- start id-form -->
              <form action="<%=request.getContextPath() %>/CustomerAddServlet" method="post">
              <table border="0" cellpadding="0" cellspacing="0"  id="id-form">
              <tr>
                  <th valign="top">客户id：</th>
                  <td><input type="text" name= "customeruserid" class="inp-form-error large_input"/></td>
                  <td><div class="error-left"></div>
                    <div class="error-inner">必填项* </div></td>
                </tr>
                <tr>
                  <th valign="top">客户pwd：</th>
                  <td><input  name= "customerpwd" type="text" class="inp-form"/></td>
                  <td><div class="error-left"></div>
                    <div class="error-inner">必填项*</div></td>
                </tr>
                <tr>
                  <th valign="top">客户类型编号：</th>
                  <td><input type="text" name= "customertypeid" class="inp-form-error large_input"/></td>
                  <td><div class="error-left"></div>
                    <div class="error-inner">必填项* </div></td>
                </tr>
                <tr>
                  <th valign="top">客户编号：</th>
                  <td><input  name= "customerid" type="text" class="inp-form"/></td>
                  <td><div class="error-left"></div>
                    <div class="error-inner">必填项*</div></td>
                </tr>
                <tr>
                  <th valign="top">客户姓名：</th>
                  <td><input  name= "customername" type="text" class="inp-form"/></td>
                  <td><div class="error-left"></div>
                    <div class="error-inner">必填项*</div></td>
                </tr>
                <tr>
                  <th valign="top">客户性别：</th>
                  <td><input  name= "customersex" type="text" class="inp-form"/></td>
                  <td><div class="error-left"></div>
                    <div class="error-inner">必填项*</div></td>
                </tr>
                <tr>
                  <th valign="top">证件号：</th>
                  <td><input  name= "customerhao" type="text" class="inp-form"/></td>
                  <td><div class="error-left"></div>
                    <div class="error-inner">必填项*</div></td>
                </tr>
                <tr>
                  <th valign="top">联系方式：</th>
                  <td><input  name= "customertel" type="text" class="inp-form"/></td>
                  <td><div class="error-left"></div>
                    <div class="error-inner">必填项*</div></td>
                </tr>
                <tr>
                  <th valign="top">客户习惯：</th>
                  <td><textarea rows="" name= "customerremark" cols="" class="form-textarea"></textarea></td>
                  <td></td>
                </tr>
                <tr>
                  <th>&nbsp;</th>
                  <td valign="top"><input type="submit" value="" class="form-submit" />
                    <input type="reset" value="" class="form-reset"  /></td>
                  <td></td>
                </tr>
              </table>
              </form>
              <!-- end id-form  -->
            </td>
            </tr>
          
          </table>
          <div class="clear"></div>
        </div>
        <!--  end content-table-inner  -->
        </td>
        <td id="tbl-border-right"></td>
      </tr>
      <tr>
        <th class="sized bottomleft"></th>
        <td id="tbl-border-bottom">&nbsp;</td>
        <th class="sized bottomright"></th>
      </tr>
    </table>
  </div>
  <!--  end content -->
  <div class="clear">&nbsp;</div>
</div>
<!--  end content-outer -->
</body>
</html>