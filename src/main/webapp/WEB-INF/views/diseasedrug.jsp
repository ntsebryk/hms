<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
             pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>



<script src="<c:url value="/resources/libs/js/ng-table.js"/>"></script>
<script src="<c:url value="/resources/custom/js/disease-drug/disease-drug-angular.js"/>"></script>

<script type="text/javascript">
    <c:set value="${disease.id}" var="diseaseId"/>
    var diseaseId = '<c:out value="${disease.id}"/>'
</script>


<link data-require="ng-table@*" data-semver="0.3.0" rel="stylesheet" href="http://bazalt-cms.com/assets/ng-table/0.3.0/ng-table.css" />

<link href="<c:url value = "/resources/custom/css/diseasedrug.css"/>"
    rel="stylesheet">


<div ng-app="diseasedrugangular">

    <!-- PANEL -->
    <div class="c4" style="width: 100%; height: 910px;">
        <div class="panel panel-default">

            <div style="padding: 0px; padding-left: 5px; height: 6%">
                <h2 style="color: #428BCA; margin-left: 10px; margin-top: 0; position: relative; top: 25%">
                    <i class="fa fa-medkit fa-fw"></i> Editing Drugs for Disease
                </h2>
            </div>
            <%--<!--PANEL HEADER -->--%>
            <%--<div class="panel-heading" style="padding: 0px; padding-left: 5px; height: 6%">--%>

            <%--&lt;%&ndash;<h3 style="margin-top:0;position: relative; top: 25%">Editing drugs for diseases</h3>&ndash;%&gt;--%>
               <%----%>
            <%--</div>--%>

            <!-- PANEL BODY -->
            <div class="panel-body" style="margin-right: 3%; margin-left: 3%;">

                <!-- DISEASE PANEL -->
                <div class="panel panel-default" id="disease-panel" style="height: 200px; float: left; width:82%">
                    <div class="panel-heading">
                        <b>${disease.name}</b>
                    </div>
                    <div class="panel-body">
                        <div>${disease.description}</div>
                    </div>
                </div>

                <!-- DISEASE IMAGE -->
                <div>
                    <div style='float: right'>
                        <img alt="Responsive image" class="img-rounded" style="height: 200px"
                                src="<c:url value="/resources/custom/images/no-image.png"/>">
                    </div>
                </div>

                <dd-table></dd-table>
            </div>
        </div>
    </div>
</div>
