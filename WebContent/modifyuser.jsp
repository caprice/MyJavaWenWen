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
		<link rel="stylesheet" type="text/css" href="./css/style_2.css" />
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


							<div id="content">

								<logic:notPresent name="user">
								<h2>对不起 您还没有登录 只有登录后才能修改个人信息！</h2>
									<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
								</logic:notPresent>
								<logic:present name="user">
									<h2>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										* 请认真填写下面的信息进行用户信息修改
									</h2>
									<form action="modifinguser.do" method="post">
										<table cellspacing="15" width="80%">
											<tr>
												<td align="right">
													用户名：
												</td>
												<td>
													<input type="text" name="username"
														value="${user.username }" />
												</td>
											</tr>
											<tr>
												<td align="right">
													密码：
												</td>
												<td>
													<input type="password" name="userpwd" size="21" />
												</td>
											</tr>
											<tr>
												<td align="right">
													确认密码：
												</td>
												<td>
													<input type="password" name="confirmpwd" size="21" />
												</td>
											</tr>
											<tr>
												<td align="right">
													性别：
												</td>
												<td>
													&nbsp;&nbsp; 男：
													<input type="radio" name="sex" value="男" />
													&nbsp;&nbsp;&nbsp; 女：
													<input type="radio" name="sex" value="女" />
												</td>
												<td></td>
											</tr>
											<tr>
												<td align="right">
													真实姓名：
												</td>
												<td>
													<input type="text" name="realname"
														value="${user.realname }" />
												</td>
											</tr>
											<tr>
												<td align="right">
													电子邮箱：
												</td>
												<td>
													<input type="text" name="usermail"
														value="${user.usermail }" />
												</td>
											</tr>
											<tr>
												<td align="right">
													找回密码提示问题：
												</td>
												<td>
													<input type="text" name="userques"
														value="${user.userques }" />
												</td>
											</tr>
											<tr>
												<td align="right">
													找回密码问题答案：
												</td>
												<td>
													<input type="text" name="userans" value="${user.userans }" />
												</td>
											</tr>
											<tr>
												<td align="center" colspan="3">
													<input type="submit" value="确认提交" />
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<input type="reset" value="取消重置" />
												</td>
											</tr>

										</table>
									</form>
								</logic:present>
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

