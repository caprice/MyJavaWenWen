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
								<br/>
								<logic:present name="questionList" scope="request">
									<logic:empty name="questionList">
										对不起 暂时没有任何问题！
									</logic:empty>
									<logic:notEmpty name="questionList">
									<table align="center" style="border: 2px #d0cfd5 solid"
										width="110%">
										<tr bgcolor="#d0cfd5">
											<th align="center" width="20%">
												问题标题
											</th>
											<th align="center">
												一级栏目
											</th>
											<th align="center">
												二级栏目
											</th>
											<th align="center">
												悬赏分数
											</th>
											<th align="center">
												提问者
											</th>
											<th align="center">
												提问时间
											</th>
											<th align="center">
												解决状态
											</th>
											<th align="center">
												是否有<br/>采纳答案
											</th>
											<th align="center">
												点击率
											</th>
											<th align="center">
												已有答案
											</th>
											<th align="center">
												回答
											</th>
										</tr>
									<c:forEach items="${questionList}" var="question">
											<tr>
												<th align="left">
													<a href="queryques.do?qid=${question.qid}">${question.title}</a>
												</th>
												<th align="left">
													${question.item.itemname}
												</th>
												<th align="left">
													${question.subItem.subname}
												</th>
												<th align="left">
													${question.offerscore}
												</th>
												<th align="left">
													${question.user.username}
												</th>
												<th align="left" width="9%">
													${question.questiontime}
												</th>
												<c:choose>
													<c:when test="${question.status eq 1}">
														<th align="left">
															未解决
														</th>
													</c:when>
													<c:when test="${question.status eq 2}">
														<th align="left">
															已解决
														</th>
													</c:when>
													<c:otherwise>
														<th align="left">
															无满意答案
														</th>
													</c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${question.acceptflag eq 1}">
														<th align="left">
															已采纳
														</th>
													</c:when>
													<c:otherwise>
														<th align="left">
															未采纳
														</th>
													</c:otherwise>
												</c:choose>
												<th align="left">
													${question.clickcount}
												</th>
												<th align="left">
													<a href="queryanswer.do?qid=${question.qid}">查看</a>
												</th>
												<th align="left">
													<a href="toanswer.do?qid=${question.qid }">回答</a>
												</th>
											</tr>
											</c:forEach>
										</table>
									
									</logic:notEmpty>
								</logic:present>
								<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
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

