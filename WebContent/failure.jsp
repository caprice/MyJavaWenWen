<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>errors</title>
</head>
<body>
	<h1>Errors</h1>
	<hr/>
	ϵͳ����<br/><br/>
		<logic:present name="flag">
		
			<c:set value="registerfailure" var="registerfailure"/>
			<c:set value="checkcodeerror" var="checkcodeerror"/>
			<c:set value="namepasserror" var="namepasserror"/>
			<c:set value="usernull" var="usernull"/>
			<c:set value="askfailure" var="askfailure"/>
			<c:set value="querydetailerror" var="querydetailerror"/>
			<c:set value="queryscoreListError" var="queryscoreListError"/>
			<c:set value="usernotequals" var="usernotequals"/>
			<c:set value="scorenotenough" var="scorenotenough"/>
			<c:set value="adminloginerror" var="adminloginerror"/>
			<c:set value="additemfailure" var="additemfailure"/>
			<c:set value="backpassworderror" var="backpassworderror"/>
		
			<c:if test="${flag eq registerfailure}">
				&nbsp;&nbsp;&nbsp;&nbsp;--�����������벻һ�£�
			</c:if>
			<c:if test="${flag eq checkcodeerror}">
				&nbsp;&nbsp;&nbsp;&nbsp;--��֤���������
			</c:if>
			<c:if test="${flag eq namepasserror}">
				&nbsp;&nbsp;&nbsp;&nbsp;--�û����������������
			</c:if>
			<c:if test="${flag eq usernull}">
				&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� ����û�е�¼��
			</c:if>
			<c:if test="${flag eq askfailure}">
				&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� ����ʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq querydetailerror}">
				&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� ��ѯ����ϸ��ʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq queryscoreListError}">
				&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� ��ѯ�û������б�ʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq usernotequals}">
				&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� �����ⲻ������������� ���������ò���֧������ ��ֻ��Ϊ�����������Ĵ�֧�����֣�
			</c:if>
			<c:if test="${flag eq scorenotenough}">
				&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� ���Ļ��ֲ��� ��Ŭ���ش����⻻ȡ�㹻�Ļ��� �ٽ������ʣ�
			</c:if>
			<c:if test="${flag eq adminloginerror}">
				&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� ����Ա��¼ʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq additemfailure}">
				&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� ���һ����Ŀʧ�� ���Ժ����ԣ�
			</c:if>
			<c:if test="${flag eq backpassworderror}">
				&nbsp;&nbsp;&nbsp;&nbsp;--�Բ��� ����Ա������ȷ�����벻һ�£�
			</c:if>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="history.back()">������һҳ</a></p>
		</logic:present>
</body>
</html>