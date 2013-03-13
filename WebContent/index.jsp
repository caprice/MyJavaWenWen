<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>

<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Java问问</title>
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
					<a href="index.do" title="Downloads"><span>主页</span> </a>
				</li>
				<li>
					<a href="register.do" title="Gallery"><span>注册</span> </a>
				</li>
				<li>
			  		<a href="login.do" title="Links"><span>登录</span> </a>
				</li>
				<li>
					<a href="scorelist.do" title="Links"><span>积分排行</span> </a>
				</li>
				<li>
					<a href="modifyuser.do" title="Links"><span>修改个人信息</span> </a>
				</li>
				<li>
					<a href="myquestionlist.do" title="Links"><span>我的问题</span> </a>
				</li>
				<li>
					<a href="ask.do" title="Links"><span>我要提问</span> </a>
				</li>
				<li>
					<a href="allquestionlist.do" title="Links"><span>我要答题</span> </a>
				</li>
				<li>
					<a href="about.jsp" title="Links"><span>关于</span> </a>
				</li>
			</ul>
		</div>
		<!--menu-top-->

		<div id="wrapper-header">
			<div id="header">
				<div id="wrapper-header2">
					<div id="wrapper-header3">
						<h1>
							<font color="blue">Java问问</font>
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
										当前用户：${user.username }&nbsp;&nbsp;&nbsp; 等级：${user.grade }级——
										
										<c:choose>
											<c:when test="${user.integral < 300}">
												<th align="left">
													开发爱好者
												</th>
											</c:when>
											<c:when
												test="${301 < user.integral and user.integral < 1000}">
												<th align="left">
													初级程序员
												</th>
											</c:when>
											<c:when
												test="${1001 < user.integral and user.integral < 5000}">
												<th align="left">
													软件工程师
												</th>
											</c:when>
											<c:when
												test="${5001 < user.integral and user.integral < 10000}">
												<th align="left">
													高级软件工程师
												</th>
											</c:when>
											<c:when
												test="${10001 < user.integral and user.integral < 50000}">
												<th align="left">
													项目主管
												</th>
											</c:when>
											<c:when
												test="${50001 < user.integral and user.integral < 100000}">
												<th align="left">
													项目总监
												</th>
											</c:when>
											<c:when
												test="${10001 < user.integral and user.integral < 500000}">
												<th align="left">
													首席技术执行官
												</th>
											</c:when>
											<c:otherwise>
												<th align="left">
													你太变态了
												</th>
											</c:otherwise>
										</c:choose>
										
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="logout.do">【注销】</a>
									</logic:present>
									<logic:notPresent name="user" scope="session">
										当前用户：游客
									</logic:notPresent>
								</h2>
								<hr /> &nbsp;&nbsp;&nbsp;&nbsp;
								已解决问题：${YR }件 &nbsp;&nbsp;&nbsp;&nbsp;待解决问题：${R }件
								<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
									<tr>
										<td colspan="2" bgcolor="#d0cfd5"><b>&nbsp;&nbsp;推荐问题</b></td>
									</tr>
								</table>
								<c:forEach items="${questionListTime}" begin="0" end="4" var="q">
									<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
										<tr>
											<td width="20%">&nbsp;&nbsp;[${q.subItem.subname }]</td>
											<td>${q.title }&nbsp;&nbsp;${q.offerscore }分</td>
										</tr>
									</table>
								</c:forEach>
								<br/>
								
								<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
									<tr>
										<td colspan="2" bgcolor="#d0cfd5"><b>&nbsp;&nbsp;待解决问题</b></td>
									</tr>
								</table>
								<c:forEach items="${questionListResolve}" begin="0" end="4" var="q">
								<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
									<tr>
										<td width="30%">[${q.subItem.subname }]</td>
										<td>${q.title }&nbsp;&nbsp;${q.offerscore }分</td>
									</tr>
								</table>
								</c:forEach>
								<br/>
								
								<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
									<tr>
										<td colspan="2" bgcolor="#d0cfd5"><b>&nbsp;&nbsp;已解决问题</b></td>
									</tr>
								</table>
								<c:forEach items="${questionListRR}" begin="0" end="4" var="q">
									<table align="center" style="border: 2px #d0cfd5 solid" width="95%">
										<tr>
											<td width="30%">[${q.subItem.subname }]</td>
											<td>${q.title }&nbsp;&nbsp;${q.offerscore }分</td>
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

