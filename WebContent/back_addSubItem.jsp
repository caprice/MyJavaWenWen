<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
		<title>�������</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2> 
			h��Ӷ�����Ŀ 
		</h2>
		<form action="backaddsubitem.do" method="post">
		<input type="hidden" name="itemid" value="${item.itemid }"/>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th width="30%">
					һ����Ŀ���ƣ�
				</th>
				<td>
					<input type="text" size="100" value="${item.itemname}" disabled="disabled"/>
				</td>
			</tr>
			<tr>
				<th width="30%">
					������Ŀ���ƣ�
				</th>
				<td>
					<input type="text" name="subname" size="100" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="�ύ" />
					&nbsp;&nbsp;
					<input type="reset" value="����" />
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>