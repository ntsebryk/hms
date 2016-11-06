<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="modalMessage" class="modal fade">
	<div class="modal-dialog">
		<c:choose>
	    	<c:when test="${messageCode == 0}">
	    <div class="modal-content panel panel-red">  	
	      	</c:when>
	
			<c:when test="${messageCode == 1}">
	    <div class="modal-content panel panel-green">  	
	      	</c:when>
		</c:choose>
		
			<div class="modal-header panel-heading">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">X</button>
				<h4 class="modal-title">${caption}</h4>
			</div>
			<div class="modal-body">
				${message}
			</div>
			<div class="modal-footer panel-footer">
				Lv-123
			</div>
		</div>
	</div>
</div>