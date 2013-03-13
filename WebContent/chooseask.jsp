<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>

<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Java����</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
		<meta name="description"
			content="Studio7designs website and Graphic Designs, Victoria BC Canada" />
		<meta name="keywords" content="Studio7designs" />
		<meta name="author" content="http://www.studio7designs.com" />
		<link rel="stylesheet" type="text/css" href="./css/style_2.css" />
	</head>

	<body>

		<div id="menu-top">
			<ul>
				<li>
					<a href="index.do" title="Downloads"><span>��ҳ</span> </a>
				</li>
				<li>
					<a href="register.do" title="Gallery"><span>ע��</span> </a>
				</li>
				<li>
			  		<a href="login.do" title="Links"><span>��¼</span> </a>
				</li>
				<li>
					<a href="scorelist.do" title="Links"><span>��������</span> </a>
				</li>
				<li>
					<a href="modifyuser.do" title="Links"><span>�޸ĸ�����Ϣ</span> </a>
				</li>
				<li>
					<a href="myquestionlist.do" title="Links"><span>�ҵ�����</span> </a>
				</li>
				<li>
					<a href="ask.do" title="Links"><span>��Ҫ����</span> </a>
				</li>
				<li>
					<a href="allquestionlist.do" title="Links"><span>��Ҫ����</span> </a>
				</li>
				<li>
					<a href="about.jsp" title="Links"><span>����</span> </a>
				</li>
			</ul>
		</div>
		<!--menu-top-->

		<div id="wrapper-header">
			<div id="header">
				<div id="wrapper-header2">
					<div id="wrapper-header3">
						<h1>
							<font color="blue">Java����</font>
						</h1>
						<div id="wrapper-content">
							<div id="content">
								<h2>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									* ��ѡ����Ҫ�����������͵�����
								</h2>
									<table align="center" style="border: 2px #d0cfd5 solid"
										width="70%">
										<tr bgcolor="#d0cfd5">
											<th align="center">
												������һ����Ŀ
											</th>
											<th align="center">
												�����Ķ�����Ŀ
											</th>
										</tr>
									</table>
									<c:forEach items="${itemBeanList}" var="itemBean">
										<table align="center" style="border: 2px #d0cfd5 solid"
											width="70%">
											<tr>
												<th align="center" width="50%">
													${itemBean.item.itemname }
												</th>
												<td>
													<c:forEach items="${itemBean.subItemList}" var="subItem">
													&nbsp;&nbsp;&nbsp;&nbsp;<a href="toask.do?itemid=${itemBean.item.itemid }&&subid=${subItem.subid }">${subItem.subname
															}</a>
														<br />
													</c:forEach>
												</td>
											</tr>
										</table>
									</c:forEach>
							</div>
							<!--content-->
						</div>
						<!--wrapper-content-->

						<div id="wrapper-footer">
							<div id="footer">
								<a href="">Web Design Severus by MyEclipes 6.5</a> | copyright
								2009
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--wrapper-footer-->
	</body>
</html>

