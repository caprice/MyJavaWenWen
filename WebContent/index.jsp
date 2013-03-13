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
		<link rel="stylesheet" type="text/css" href="./css/style.css" />
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
							<div id="wrapper-menu-page">
								<div id="menu-page">
									<c:forEach items="${itemBeanList}" var="itemBean">
										<h2>
											&nbsp;&nbsp;${itemBean.item.itemname }
										</h2>
										<ul>
											<c:forEach items="${itemBean.subItemList}" var="s">
												<li>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<a href="querythisitem.do?itemid=${itemBean.item.itemid }&&subid=${s.subid }">${s.subname }</a>
												</li>
											</c:forEach>
										</ul>
									</c:forEach>

									<p>
										<img src="images/logo.png" width="165" height="80" alt="" />
									</p>
								</div>
								<!--menu-page-->
							</div>
							<!--wrapper-menu-page-->

							<div id="content">
								<h2>
									<logic:present name="user" scope="session">
										��ǰ�û���${user.username }&nbsp;&nbsp;&nbsp; �ȼ���${user.grade }������
										
										<c:choose>
											<c:when test="${user.integral < 300}">
												<th align="left">
													����������
												</th>
											</c:when>
											<c:when
												test="${301 < user.integral and user.integral < 1000}">
												<th align="left">
													��������Ա
												</th>
											</c:when>
											<c:when
												test="${1001 < user.integral and user.integral < 5000}">
												<th align="left">
													�������ʦ
												</th>
											</c:when>
											<c:when
												test="${5001 < user.integral and user.integral < 10000}">
												<th align="left">
													�߼��������ʦ
												</th>
											</c:when>
											<c:when
												test="${10001 < user.integral and user.integral < 50000}">
												<th align="left">
													��Ŀ����
												</th>
											</c:when>
											<c:when
												test="${50001 < user.integral and user.integral < 100000}">
												<th align="left">
													��Ŀ�ܼ�
												</th>
											</c:when>
											<c:when
												test="${10001 < user.integral and user.integral < 500000}">
												<th align="left">
													��ϯ����ִ�й�
												</th>
											</c:when>
											<c:otherwise>
												<th align="left">
													��̫��̬��
												</th>
											</c:otherwise>
										</c:choose>
										
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="logout.do">��ע����</a>
									</logic:present>
									<logic:notPresent name="user" scope="session">
										��ǰ�û����ο�
									</logic:notPresent>
								</h2>
								<hr /> &nbsp;&nbsp;&nbsp;&nbsp;
								�ѽ�����⣺${YR }�� &nbsp;&nbsp;&nbsp;&nbsp;��������⣺${R }��
								<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
									<tr>
										<td colspan="2" bgcolor="#d0cfd5"><b>&nbsp;&nbsp;�Ƽ�����</b></td>
									</tr>
								</table>
								<c:forEach items="${questionListTime}" begin="0" end="4" var="q">
									<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
										<tr>
											<td width="20%">&nbsp;&nbsp;[${q.subItem.subname }]</td>
											<td>${q.title }&nbsp;&nbsp;${q.offerscore }��</td>
										</tr>
									</table>
								</c:forEach>
								<br/>
								
								<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
									<tr>
										<td colspan="2" bgcolor="#d0cfd5"><b>&nbsp;&nbsp;���������</b></td>
									</tr>
								</table>
								<c:forEach items="${questionListResolve}" begin="0" end="4" var="q">
								<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
									<tr>
										<td width="30%">[${q.subItem.subname }]</td>
										<td>${q.title }&nbsp;&nbsp;${q.offerscore }��</td>
									</tr>
								</table>
								</c:forEach>
								<br/>
								
								<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
									<tr>
										<td colspan="2" bgcolor="#d0cfd5"><b>&nbsp;&nbsp;�ѽ������</b></td>
									</tr>
								</table>
								<c:forEach items="${questionListRR}" begin="0" end="4" var="q">
									<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
										<tr>
											<td width="30%">[${q.subItem.subname }]</td>
											<td>${q.title }&nbsp;&nbsp;${q.offerscore }��</td>
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
						<!--wrapper-footer-->
					</div>
				</div>
			</div>
		</div>
	</body>
</html>

