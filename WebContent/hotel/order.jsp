<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
</head>
<body>
	<form id="form1" name="form1" method="post"
		action="/CocoaHotel/OrderAddServlet" onsubmit="return checkform() ">
		<td align="center" valign="top" background="img/74.jpg">
			<table cellspacing="1" cellpadding="5" width="91%" align="center"
				border="0">
				<tbody>

					<tr>
						<td align="right" valign="middle">预定客房类型</td>
						<td align="left" valign="middle"><select name="c_type_id"
							id="kflx"
							style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 160px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff"
							onchange="change(this)">


								<option value="6">豪华单人</option>


								<option value="7">高级双人</option>


								<option value="8">豪华套房</option>


								<option value="9">总统套房</option>


						</select> <font color="#660000">*</font></td>
					</tr>
					<tr>
						<td align="right" valign="middle">房间数：</td>
						<td align="left" valign="middle"><input size="15" name="fs"
							id="fs"
							style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"
							onblur="miss(1)" /> <font color="#660000">*</font>
							<div style="position: absolute;" id="layer1"></div></td>
					</tr>
					<tr>
						<td align="right" valign="middle">人 数：</td>
						<td align="left" valign="middle"><input size="15" name="rs"
							style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff"
							onBlur="miss(2)" /> <font color="#660000">* </font>
							<div style="position: absolute;" id="layer2"></div></td>
					</tr>
					<tr>
						<td width="32%" align="right" valign="middle" height="28"><span
							class="1cs">您的姓名</span></td>
						<td align="left" valign="middle" height="28"><input size="35"
							name="name1" id="name1"
							style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"
							onBlur="miss(3)" /> *
							<div style="position: absolute;" id="layer3"></div></td>
					</tr>
					<tr>
						<td align="right" valign="middle">您的性别</td>
						<td align="left" valign="middle"><INPUT name=xsex type=radio
							class="inputCheck" value=小姐 CHECKED> <SPAN class=wo01>小姐</SPAN>
							<INPUT name=xsex type=radio class="inputCheck" value=先生>
							<SPAN class=wo01>先生</SPAN></td>
					</tr>


					<tr>
						<td align="right" valign="middle">邮政编码</td>
						<td align="left" valign="middle"><input size="35"
							name="company1"
							style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff"
							onblur="javascript:miss(5)" />
							<div style="position: absolute;" id="layer5"></div></td>
					</tr>
					<tr>
						<td align="right" valign="middle">联系电话</td>
						<td align="left" valign="middle"><input size="35" name="tel"
							style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"
							onblur="javascript:miss(6)" /> * 02034709708 &nbsp;&nbsp;&nbsp;
							<div style="position: absolute;" id="layer6"></div></td>
					</tr>
					<tr>
						<td align="right" valign="middle">传 真：</td>
						<td align="left" valign="middle"><input size="35" name="fax"
							style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff"
							onBlur="javascript:miss(7)" /> 02034709708 &nbsp;&nbsp;&nbsp;
							<div style="position: absolute;" id="layer7"></div></td>
					</tr>
					<tr>
						<td align="right" valign="middle">电子邮箱</td>
						<td align="left" valign="middle"><input size="35"
							name="femail" id="femail"
							style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"
							onblur="javascript:miss(8)" /> *
							<div style="position: absolute;" id="layer8"></div></td>
					</tr>
					<tr>
						<td align="right" valign="middle">您入住日期：</td>
						<td align="left" valign="middle"><input name="ord_time"
							id="rz" type="text" class="input3" size=20 onFocus="setday(this)"
							readonly> * &nbsp;&nbsp;结算日期 <input name="js" id="js"
							type="text" class="input3" size="20" onFocus="setday(this)"
							readonly>
							<div style="position: absolute;" id="layer10"></div></td>
					</tr>
					<tr>
						<td align="right" valign="middle" nowrap="nowrap">结帐方式</td>
						<td align="left" valign="middle"><input id="fanshi" size="35"
							name="fanshi"
							style="border: 1px solid #9d9d6c; FONT-SIZE: 12px; WIDTH: 114; HEIGHT: 16; BACKGROUND-COLOR: #ffffff"
							onBlur="miss(11)" /> *
							<div style="position: absolute;" id="layer11"></div></td>
					</tr>
					<tr>
						<td valign="middle" align="right">公司名称</td>
						<td align="left" valign="middle"><input id="company2"
							size="35" name="company2"
							style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 271px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"
							onBlur="miss(12)" />
							<div style="position: absolute;" id="layer12"></div></td>
					</tr>
					<tr>
						<td valign="top" align="right">请留下您<font color="#663300">宝贵意见</font></b></td>
						<td align="left" valign="middle"><textarea
								class="message_textarea" name="remark" rows="3" cols="33"
								style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 271px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 95px; BACKGROUND-COLOR: #ffffff"></textarea>
							<div style="position: absolute;" id="layer13"></div></td>
					</tr>
					<tr align="left">
						<td width="62%" colspan="2"><table width="558" border="0"
								cellpadding="0" cellspacing="0">
								<tr>
									<td colspan="3" align="left" valign="top"><img
										src="img/75.jpg" width="561" height="7"></td>
								</tr>
								<tr>
									<td width="58" align="center" valign="top" bgcolor="#680001"><img
										src="img/77.jpg" width="35" height="33"></td>
									<td width="479" align="left" valign="top" bgcolor="#680001"
										style="line-height: 22px"><font color="#FFCC00"><strong>温馨提示:</strong><br>
											·订房将保留至下午六点，以上房间若无事先通知或在没有担保金或订金情况下，本酒</br> &nbsp;
											将不保证上述订房，如需取消订房，请预先通知本酒店</font></br>
										·网上的酒店介绍、房态、价格等信息只作为参考，预订以最终电话、传真或短信确认</br> &nbsp; 准</font></td>
									<td width="24" align="left" valign="top" bgcolor="#680001"></td>
								</tr>
								<tr>
									<td colspan="3" align="left" valign="top"><img
										src="img/76.jpg" width="561" height="7"></td>
								</tr>
							</table></td>
					</tr>
					<tr align="middle">
						<td height="43" colspan="2" align="center"><input
							type="hidden" name="tHtml" /> <input class="go-wenbenkuang"
							type="submit" value="确认订房" name="btnSend" /> <input
							class="go-wenbenkuang" type="reset" value="清除" name="btnClear" /></td>
					</tr>
				</tbody>
			</table>

		</td>
	</form>
</body>
</html>