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

								<logic:notPresent name="user">
								<h2>�Բ��� ����û�е�¼ ֻ�е�¼������޸ĸ�����Ϣ��</h2>
									<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
								</logic:notPresent>
								<logic:present name="user">
									<h2>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										* ��������д�������Ϣ�����û���Ϣ�޸�
									</h2>
									<form action="modifinguser.do" method="post">
										<table cellspacing="15" width="80%">
											<tr>
												<td align="right">
													�û�����
												</td>
												<td>
													<input type="text" name="username"
														value="${user.username }" />
												</td>
											</tr>
											<tr>
												<td align="right">
													���룺
												</td>
												<td>
													<input type="password" name="userpwd" size="21" />
												</td>
											</tr>
											<tr>
												<td align="right">
													ȷ�����룺
												</td>
												<td>
													<input type="password" name="confirmpwd" size="21" />
												</td>
											</tr>
											<tr>
												<td align="right">
													�Ա�
												</td>
												<td>
													&nbsp;&nbsp; �У�
													<input type="radio" name="sex" value="��" />
													&nbsp;&nbsp;&nbsp; Ů��
													<input type="radio" name="sex" value="Ů" />
												</td>
												<td></td>
											</tr>
											<tr>
												<td align="right">
													��ʵ������
												</td>
												<td>
													<input type="text" name="realname"
														value="${user.realname }" />
												</td>
											</tr>
											<tr>
												<td align="right">
													�������䣺
												</td>
												<td>
													<input type="text" name="usermail"
														value="${user.usermail }" />
												</td>
											</tr>
											<tr>
												<td align="right">
													�һ�������ʾ���⣺
												</td>
												<td>
													<input type="text" name="userques"
														value="${user.userques }" />
												</td>
											</tr>
											<tr>
												<td align="right">
													�һ���������𰸣�
												</td>
												<td>
													<input type="text" name="userans" value="${user.userans }" />
												</td>
											</tr>
											<tr>
												<td align="center" colspan="3">
													<input type="submit" value="ȷ���ύ" />
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<input type="reset" value="ȡ������" />
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

