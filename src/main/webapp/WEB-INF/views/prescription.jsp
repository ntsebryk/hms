<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/prescription.css" />" />
	
<h1>PRESCRIPTION</h1>

<table data-toggle="table" data-show-columns="true"
	data-toolbar="#custem-toolbar" data-pagination="true">
	<thead>
		<tr>
			<th>#</th>
			<th>DRUG</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${drugs}" var="drug">
			<tr>
				<td>${drug.id}</td>
				<td>${drug.name}</td>
				<td>${drug.description}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>