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
									* ��������д�������Ϣ��������
								</h2>
								<form action="asking.do" method="post">
									<table align="center" style="border: 3px #d0cfd5 solid"
										width="90%">
										<tr>
											<th align="right" width="30%">������⣺</th>
											<td><input type="text" name="title" size="70"/></td>
										</tr>
									</table>
									<table align="center" style="border: 2px #d0cfd5 solid"
										width="90%">
										<tr>
											<th align="right" width="30%">�������ݣ�</th>
											<td>
												<textarea rows="5" cols="69" name="content">
												</textarea>
											</td>
										</tr>
									</table>
									<table align="center" style="border: 2px #d0cfd5 solid"
										width="90%">
										<tr>
											<th align="right" width="30%">����һ����Ŀ��</th>
											<td><input type="text" name="itemname" size="70" value="${item.itemname }" disabled="disabled"/></td>
										</tr>
									</table>
									<table align="center" style="border: 2px #d0cfd5 solid"
										width="90%">
										<tr>
											<th align="right" width="30%">����������Ŀ��</th>
											<td><input type="text" name="subname" size="70" value="${subItem.subname }" disabled="disabled"/></td>
										</tr>
									</table>
									<table align="center" style="border: 2px #d0cfd5 solid"
										width="90%">
										<tr>
											<th align="right" width="30%">���ͷ�����</th>
											<td><input type="text" name="offerscore" size="70"/></td>
										</tr>
									</table>
									<table align="center" style="border: 3px #d0cfd5 solid"
										width="90%">
										<tr>
											<td>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="submit" value="ȷ���ύ"/>
												<input type="reset" value="ȡ������"/>
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

