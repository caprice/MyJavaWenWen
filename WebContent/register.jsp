<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
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
		<script type="text/javascript" src="jslib/jquery.js"></script>
		<script type="text/javascript" src="jslib/jquerywin.js"></script>
		<link rel="stylesheet" type="text/css" href="./css/win.css" />
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
									* ��������д�������Ϣ����ע��
								</h2>
								<form action="registing.do" method="post">
									<table cellspacing="15" width="80%">
										<tr>
											<td align="right">
												�û�����
											</td>
											<td>
												<input type="text" name="username"
													onMouseOver="showwinname()" onMouseOut="hidename()" />
											</td>
											<td>
												<div id="winname">
													<div id="js_title">
														&nbsp;
														<b>�û������룺</b>
													</div>
													<div id="js_content">
														&nbsp;&nbsp;&nbsp;5-18λ�ַ���
														<br>
														&nbsp;&nbsp;&nbsp;ֻ��Ϊ��ĸ,���֣��»���
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td align="right">
												���룺
											</td>
											<td>
												<input type="password" name="userpwd" size="21"
													onMouseOver="showwin_pwd()" onMouseOut="hide_pwd()" />
											</td>
											<td>
												<div id="win_pwd">
													<div id="js_title">
														&nbsp;
														<b>�������룺</b>
													</div>
													<div id="js_content">
														&nbsp;&nbsp;&nbsp;6-18λ�ַ���
														<br>
														&nbsp;&nbsp;&nbsp;ֻ��Ϊ��ĸ,���֣��»���
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td align="right">
												ȷ�����룺
											</td>
											<td>
												<input type="password" name="confirmpwd" size="21"
													onMouseOver="showwin_cpwd()" onMouseOut="hide_cpwd()" />
											</td>
											<td>
												<div id="win_cpwd">
													<div id="js_title">
														&nbsp;
														<b>ȷ���������룺</b>
													</div>
													<div id="js_content">
														&nbsp;&nbsp;&nbsp;6-18λ�ַ���
														<br>
														&nbsp;&nbsp;&nbsp;ȷ���������������һ��
													</div>
												</div>
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
													onMouseOver="showwin_rname()" onMouseOut="hide_rname()" />
											</td>
											<td>
												<div id="win_rname">
													<div id="js_title">
														&nbsp;
														<b>�������룺</b>
													</div>
													<div id="js_content">
														&nbsp;&nbsp;&nbsp;�����Ǻ����ַ�
														<br>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td align="right">
												�������䣺
											</td>
											<td>
												<input type="text" name="usermail"
													onMouseOver="showwin_mail()" onMouseOut="hide_mail()" />
											</td>
											<td>
												<div id="win_mail">
													<div id="js_title">
														&nbsp;
														<b>�����ַ���룺</b>
													</div>
													<div id="js_content">
														&nbsp;&nbsp;&nbsp;����Ϊ��׼��Email��ʽ
														<br>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td align="right">
												�һ�������ʾ���⣺
											</td>
											<td>
												<input type="text" name="userques"
													onMouseOver="showwin_ques()" onMouseOut="hide_ques()" />
											</td>
											<td>
												<div id="win_ques">
													<div id="js_title">
														&nbsp;
														<b>�һ�������ʾ�������룺</b>
													</div>
													<div id="js_content">
														&nbsp;&nbsp;&nbsp;5-30λ�ַ���
														<br>
														&nbsp;&nbsp;&nbsp;�ַ���ʽ����
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td align="right">
												�һ���������𰸣�
											</td>
											<td>
												<input type="text" name="userans"
													onMouseOver="showwin_ans()" onMouseOut="hide_ans()" />
											</td>
											<td>
												<div id="win_ans">
													<div id="js_title">
														&nbsp;
														<b>�һ�������������룺</b>
													</div>
													<div id="js_content">
														&nbsp;&nbsp;&nbsp;5-30λ�ַ���
														<br>
														&nbsp;&nbsp;&nbsp;�ַ���ʽ����
													</div>
												</div>
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

