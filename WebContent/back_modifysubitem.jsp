<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�������</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			�޸Ķ�����Ŀ
		</h2>
		<form action="backmodifysubitem.do" method="post">
		<input type="hidden" name="subid" value="${subItem.subid }"/>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					����һ����Ŀ��
				</th>
				<td>
					<input type="text" disabled="disabled" value="${subItem.item.itemname}"/>
				</td>
			</tr><tr>
				<th>
					������Ŀ���ݣ�
				</th>
				<td>
					<input type="text" name="subname" value="${subItem.subname }"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="�޸�" />
					&nbsp;&nbsp;
					<input type="reset" value="����" />
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>