<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
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
		<script type="text/javascript" src="jslib/jquery.js"></script>
		<script type="text/javascript" src="jslib/jquerywin.js"></script>
		<link rel="stylesheet" type="text/css" href="./css/win.css" />
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
								<h2>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									* 请认真填写下面的信息进行登录
								</h2>
								<form action="logining.do" method="post">
									<table cellspacing="15" width="80%">
										<tr>
											<td align="right">
												用户名：
											</td>
											<td>
												<input type="text" name="username"
													onMouseOver="showwinname()" onMouseOut="hidename()" />
											</td>
											<td>
												<div id="winname">
													<div id="js_title">
														&nbsp;
														<b>用户名输入：</b>
													</div>
													<div id="js_content">
														&nbsp;&nbsp;&nbsp;5-18位字符，
														<br>
														&nbsp;&nbsp;&nbsp;只能为字母,数字，下划线
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td align="right">
												密码：
											</td>
											<td>
												<input type="password" name="userpwd" size="21"
													onMouseOver="showwin_pwd()" onMouseOut="hide_pwd()" />
											</td>
											<td>
												<div id="win_pwd">
													<div id="js_title">
														&nbsp;
														<b>密码输入：</b>
													</div>
													<div id="js_content">
														&nbsp;&nbsp;&nbsp;6-18位字符，
														<br>
														&nbsp;&nbsp;&nbsp;只能为字母,数字，下划线
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td align="right">
												确认密码：
											</td>
											<td>
												<input type="text" name="checkcode" size="10"
													onMouseOver="showwin_cpwd()" onMouseOut="hide_cpwd()" />
												<img src="image.jsp">
											</td>
											<td>
												<div id="win_cpwd">
													<div id="js_title">
														&nbsp;
														<b>验证码输入：</b>
													</div>
													<div id="js_content">
														&nbsp;&nbsp;&nbsp;4位字符，
														<br>
														&nbsp;&nbsp;&nbsp;请仔细辨认
													</div>
												</div>
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
									<br/><br/><br/><br/><br/>
								</form>
							</div>
							<!--content-->
						</div>
						<!--wrapper-content-->

						<div id="wrapper-footer">
							<div id="footer">
								<a href="">Web Design Severus by MyEclipes 6.5</a> | copyright
								2009
							</div>
						</div></div></div></div></div>
						<!--wrapper-footer-->
	</body>
</html>

