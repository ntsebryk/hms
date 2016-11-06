<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/prescription.css"/>"/>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/jquery-ui.css"/>"/>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/jquery-ui.theme.css"/>"/>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/jquery-ui.structure.css"/>"/>
<script src="<c:url value="/resources/js/pharmacist.js"/>"></script>
<script src="<c:url value="/resources/js/pharmacistHelper.js"/>"></script>


<c:url var="firstUrl" value="/pharmacist"></c:url>
<c:url var="previousUrl" value="/pharmacist/${currentPage - 1}"></c:url>
<c:url var="nextUrl" value="/pharmacist/${currentPage + 1}"></c:url>
<c:url var="lastUrl" value="/pharmacist/${numberOfPages}"></c:url>

<p>List of all PRESCRIPTIONS</p>

<!-- Filter toolbar -->val
<div id="custem-toolbar">
	<div class="form-inline" role="form">
		<div class="form-group">
<!-- 			<div class="input-group"> -->
<!-- 				<span class="input-group-addon">Barcode</span> -->
<!-- 				<input class="form-control" type="text" id="barcode" -->
<!-- 					placeholder="Enter barcode"> -->
<!-- 			</div> -->
			<div class="input-group">
				<span class="input-group-addon">Patient full name</span>
				<input class="form-control" type="text" id="patientFullName"
					placeholder="Enter full name">
			</div>
			<div class="input-group">
				<span class="input-group-addon">Doctor full name</span>
				<input class="form-control" type="text" id="doctorFullName"
					placeholder="Enter full name">
			</div>
		</div>
	</div>
</div>

<!-- Table of all prescriptions -->
<table data-show-columns="true" class="table table-condensed table-hover table-bordered" id="mainTable">
	<thead>
		<tr>
			<th id="fullName" class="pointer">Patient's full name</th>
			<th id="fullName" class="pointer">Doctor's full name</th>
			<th id="createdDate" class="pointer">Prescribing date</th>
			<th id="checkOutDate" class="pointer">Issuance date</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${prescriptions.content}" var="prescription">
			<c:choose>
				<c:when test="${prescription.prescriptionState == 'NEW'}">
					<tr id="${prescription.id}" class="is-active pointer">
						<td>${prescription.patient.fullName}</td>
						<td>${prescription.doctor.fullName}</td>
						<td>${prescription.createdDate}</td>
						<td>${prescription.checkOutDate}</td>
					</tr>
				</c:when>
				<c:otherwise>
					<tr style="background-color: #DAF6E0;">
						<td>${prescription.patient.fullName}</td>
						<td>${prescription.doctor.fullName}</td>
						<td>${prescription.createdDate}</td>
						<td>${prescription.checkOutDate}</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</tbody>
</table>

<!-- Selector to show some predefined number of rows -->
<div id="row-count" class="btn-group">
	<button type="button" class="btn btn-default dropdown-toggle btn-lg"
		data-toggle="dropdown">10<span class="caret"></span>
	</button>
	<ul class="dropdown-menu" role="menu">
		<li><span>10</span></li>
		<li><span>15</span></li>
		<li><span>20</span></li>
		<li><span>25</span></li>
	</ul>
</div>

<!-- Dynamic pagination under table-->
<ul class="pagination">
	<c:choose>
	
<%-- 	If quantity of rows is > 1 --%>
		<c:when test="${numberOfPages > 1}">
		
<%-- 		Print left arrows --%>
			<c:choose>
				<c:when test="${currentPage != 1}">
					<li><span id="1">&laquo;</span></li>
					<li><span id="${currentPage - 1}">&lsaquo;</span></li>
				</c:when>
				<c:otherwise>
					<li class="disabled"><span>&laquo;</span></li>
					<li class="disabled"><span>&lsaquo;</span></li>
				</c:otherwise>
			</c:choose>
			
<%-- 		Print numbers of pages --%>
			<c:forEach var="i" begin="1" end="${numberOfPages}">
				<c:choose>
					<c:when test="${i == currentPage}">
						<li class="active"><span id="${i}">${i}</span></li>
					</c:when>
					<c:otherwise>
						<li><span id="${i}">${i}</span></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
<%-- 		Print right arrows --%>
			<c:choose>
				<c:when test="${currentPage >= numberOfPages}">
					<li class="disabled"><span>&rsaquo;</span></li>
					<li class="disabled"><span>&raquo;</span></li>
				</c:when>
				<c:otherwise>
					<li><span id="${currentPage + 1}">&rsaquo;</span></li>
					<li><span id="${numberOfPages}">&raquo;</span></li>
				</c:otherwise>
			</c:choose>

<%-- 	End of condition "If quantity of rows is > 10" --%>
		</c:when>
		
<%-- 	If quantity of rows is <= 10 --%>
		<c:otherwise>
			<li class="disabled">&lsaquo;</li>
			<li class="active"><span id="1">1</span></li>
			<li class="disabled">&rsaquo;</li>
		</c:otherwise>
	</c:choose>
</ul>

<!-- Modal window for showing list of drugs for selected prescription -->
<div class="modal" id="divlistOfDrugs">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body">
      	<table class="table table-condensed table-hover" id="listOfDrugs">
      		<thead>
				<tr>
					<th>Drug</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="giveOut">Give out</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Modal window if error of give out prescription occured-->
<div class="modal" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
    	<div class="modal-content">
			<div class="modal-header">
 				<button type="button" class="close" data-dismiss="modal">
 					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
 				</button>
 				<h4 class="modal-title">ERROR</h4>
  			</div>
 			<div class="modal-body">
    		</div>
		</div>
	</div>
</div>
