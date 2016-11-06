<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script src="<c:url value="/resources/libs/js/jquery-2.1.1.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/custom/js/diseases.js"/>"></script>

<div style="margin-top: 30px; margin-left: 30px" id="btn-top"
	class="btn-group">
	<button class="btn btn-default" onclick="deleteSelected()"
		style="background-color: #F5F5F5">
		<span class="glyphicon glyphicon-minus-sign" style="color: #428BCA;"></span>
	</button>
	<a data-toggle="modal" href="#addDiseaseDiv" role="button"
		class="btn btn-default" style="background-color: #F5F5F5"><span
		class="glyphicon glyphicon-plus-sign" style="color: #428BCA;"></span>
	</a>
</div>
<div id="addDiseaseDiv" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">X</button>
				<h4 class="modal-title">enter info</h4>
			</div>
			<div class="modal-body">
				<div id='addDiseaseForm' class="form-horizontal">
					<fieldset>
						<input id="diseaseIdH" type="hidden"/>

						<!-- Name -->
						<div class="form-group">
							<label for="inputName" class="col-lg-3 control-label">Name</label>
							<div class="col-lg-9">
								<input class="form-control" id="inputName" type="text"/>
							</div>
						</div>

						<!-- Description -->
						<div class="form-group">
							<label for="inputDescription" class="col-lg-3 control-label">Description</label>
							<div class="col-lg-9">
								<input class="form-control" id="inputDescription" type="text"/>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-9 col-lg-offset-3">

								<button onclick="addOrEdit()" class="btn btn-success"
									data-dismiss="modal">Send</button>

								<button onclick="clearSelection()" class="btn btn-reject"
									data-dismiss="modal">Cancel</button>

							</div>
						</div>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
</div>

<c:if test="${empty diseases}">
	<script>
		alert("empty");
	</script>
</c:if>

<div style="margin-top: 20px; margin-left: 30px; margin-right: 30px">
	<c:if test="${!empty diseases}">
		<table id="diseases" class=" table-condensed table-bordered">
			<thead>
				<tr style="height: 40px;">
					<th style="width: 50px;"></th>
					<th>Name</th>
					<th style="width: 600px;">Description</th>
					<th>Edit</th>
					<th>Drugs</th>
					<th>Symptoms</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${diseases}" var="disease">
					<tr class="diseaseRow">
						<td><input class="diseaseCB" name="checkbox1" type="checkbox"
							value="${disease.id}"></td>
						<td class="diseaseName">${disease.name}</td>
						<td class="diseaseDesc">${disease.description}</td>
						<td onclick="fillModal('${disease.id}') " class="editBtn"><a
							data-toggle="modal" href="#addDiseaseDiv">Edit</a></td>
                        <td><a href="diseasedrug/${disease.id}" /> Drugs</td>
                        <td><a href="disSymptoms/${disease.id}" /> Symptoms</td>
						<%--<td>
                            <c:catch var="noDrugs">${disease.drugs}</c:catch>
                            <c:if test="${noDrugs!=null}">
                                <a href="diseasedrug/${disease.id}">Edit drugs</a>
                            </c:if>
                            <c:if test="${noDrugs==null}">
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#">
										<i>Drugs
											<i class="fa fa-caret-down"></i>
										</i>
									</a>
									<ul class="dropdown-menu">
										<c:forEach items="${disease.drugs}" var="drug">
											<li><a>"${drug.name}"</a></li>
											<li class="divider"></li>
										</c:forEach>
										<li><a href="diseasedrug/${disease.id}">Edit drugs</a></li>
									</ul>
								</div>
							</c:if>
						</td>
						<td>
                            <c:catch var="noSymptoms">${disease.symptoms}</c:catch>
                            <c:if test="${noSymptoms!=null}">
                                <a href="disSymptoms/${disease.id}">Edit symptoms</a>
                            </c:if>
                            <c:if test="${noSymptoms==null}">
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#">
										<i>Symptoms
											<i class="fa fa-caret-down"></i>
										</i>										
									</a>
									<ul class="dropdown-menu">
										<c:forEach items="${disease.symptoms}" var="symptom">
											<li><a>"${symptom.name}"</a></li>
											<li class="divider"></li>
										</c:forEach>
										<li><a href="disSymptoms/${disease.id}">Edit symptoms</a></li>
									</ul>
								</div>
							</c:if>
						</td>--%>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
</div>



















