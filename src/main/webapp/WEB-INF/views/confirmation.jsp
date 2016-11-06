<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:choose>
	<c:when test="${confirm == true}">
	<div class="panel panel-success">
		<div class="panel-heading">
			<strong>Hello!</strong>
		</div>
		<div class="panel-body">
			<p>Congratulations, you registered successfully!</p>
			<p><a href="<%=request.getContextPath()%>/?action=login">Click here</a> to login.</p>
		</div>
		<div class="panel-footer">
			<p>Have a nice day</p>
		</div>
	</div>
	</c:when>
	<c:otherwise>
	<div class="panel panel-red">
		<div class="panel-heading">
			<strong>Sorry :(</strong>
		</div>
		<div class="panel-body">
			<p>Registration isn't confirmed</p>
			<p><a href="<%=request.getContextPath()%>/?action=register">Click here</a> to register again.</p>
		</div>
		<div class="panel-footer">
			<p>You always can try again</p>
		</div>
	</div>
	</c:otherwise>
</c:choose>
