<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib  prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
							&nbsp;&nbsp;&nbsp;&nbsp;	
							<form action="answering.do" method="post">
							<input type="hidden" name="qid" value="${question.qid }"/>
							<table align="center" style="border: 3px #d0cfd5 solid"
								width="70%">
								<tr>
									<th align="right" width="40%">问题标题：</th>
									<td><input type="text"  size="50" value="${question.title }" disabled="disabled"/></td>
								</tr>
							</table>
							<table align="center" style="border: 2px #d0cfd5 solid"
								width="70%">
								<tr>
									<th align="right" width="40%">问题内容：</th>
									<td>
										<textarea rows="5" cols="49" disabled="disabled">
										${question.content }
										</textarea>
									</td>
								</tr>
							</table>
							<table align="center" style="border: 2px #d0cfd5 solid"
								width="70%">
								<tr>
									<th align="right" width="40%">答案内容：</th>
									<td>
										<textarea rows="5" cols="49" name="quesans">
										</textarea>
									</td>
								</tr>
							</table>
							<table align="center" style="border: 2px #d0cfd5 solid"
								width="70%">
								<tr>
									<th align="center" colspan="2">
										<input type="submit" value="确认提交"/>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="reset" value="取消重置"/>
									</th>
								</tr>
							</table>
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

