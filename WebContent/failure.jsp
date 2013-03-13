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
	系统错误：<br/><br/>
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
				&nbsp;&nbsp;&nbsp;&nbsp;--两次输入密码不一致！
			</c:if>
			<c:if test="${flag eq checkcodeerror}">
				&nbsp;&nbsp;&nbsp;&nbsp;--验证码输入错误！
			</c:if>
			<c:if test="${flag eq namepasserror}">
				&nbsp;&nbsp;&nbsp;&nbsp;--用户名或密码输入错误！
			</c:if>
			<c:if test="${flag eq usernull}">
				&nbsp;&nbsp;&nbsp;&nbsp;--对不起 您还没有登录！
			</c:if>
			<c:if test="${flag eq askfailure}">
				&nbsp;&nbsp;&nbsp;&nbsp;--对不起 提问失败 请稍候重试！
			</c:if>
			<c:if test="${flag eq querydetailerror}">
				&nbsp;&nbsp;&nbsp;&nbsp;--对不起 查询问题细节失败 请稍候重试！
			</c:if>
			<c:if test="${flag eq queryscoreListError}">
				&nbsp;&nbsp;&nbsp;&nbsp;--对不起 查询用户积分列表失败 请稍候重试！
			</c:if>
			<c:if test="${flag eq usernotequals}">
				&nbsp;&nbsp;&nbsp;&nbsp;--对不起 该问题不是您提出的问题 您不能设置采用支付积分 您只能为您提出的问题的答案支付积分！
			</c:if>
			<c:if test="${flag eq scorenotenough}">
				&nbsp;&nbsp;&nbsp;&nbsp;--对不起 您的积分不足 请努力回答问题换取足够的积分 再进行提问！
			</c:if>
			<c:if test="${flag eq adminloginerror}">
				&nbsp;&nbsp;&nbsp;&nbsp;--对不起 管理员登录失败 请稍候重试！
			</c:if>
			<c:if test="${flag eq additemfailure}">
				&nbsp;&nbsp;&nbsp;&nbsp;--对不起 添加一级栏目失败 请稍候重试！
			</c:if>
			<c:if test="${flag eq backpassworderror}">
				&nbsp;&nbsp;&nbsp;&nbsp;--对不起 管理员密码与确认密码不一致！
			</c:if>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="history.back()">返回上一页</a></p>
		</logic:present>
</body>
</html>