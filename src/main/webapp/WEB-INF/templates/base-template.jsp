<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><tiles:insertAttribute name="title" ignore="true" /></title>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript"
      	src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1','packages':['corechart','geochart','table']}]}">
</script>

<script src="<c:url value="/resources/libs/js/angular.js"/>"></script>
<script src="<c:url value="/resources/libs/js/jquery-1.11.0.js"/>"></script>
<script src="<c:url value="/resources/libs/js/jquery-2.1.1.js" />" ></script>
<script src="<c:url value="/resources/libs/js/jquery-ui.js" />" ></script>
<script src="<c:url value="/resources/libs/js/bootstrap.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ui-bootstrap-tpls-0.11.2.min.js"/>"></script>
<script	src="<c:url value="/resources/libs/js/plugins/metisMenu/metisMenu.min.js"/>"></script>
<script src="<c:url value="/resources/libs/js/sb-admin-2.js"/>"></script>
<script src="<c:url value="/resources/custom/js/http_prop.js"/>"></script>

<style>
body {
	padding-bottom: 50px;
}

.col-centered {
	float: none;
	margin: 0 auto;
}
</style>
<link href="<c:url value = "/resources/libs/css/bootstrap.css"/>" rel="stylesheet">
<link href="<c:url value = "/resources/libs/css/ng-table.css"/>" rel="stylesheet">
<link href="<c:url value = "/resources/libs/css/plugins/metisMenu/metisMenu.min.css"/>"	rel="stylesheet">
<link href="<c:url value = "/resources/libs/css/sb-admin-2.css"/>" rel="stylesheet">
<link href="<c:url value = "/resources/libs/fonts/font-awesome-4.2.0/css/font-awesome.css"/>" rel="stylesheet" type="text/css">
</head>

<body>
	<div id="wrapper">
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
      <div class="navbar-header navbar-brand">
        <i class="fa fa-plus-circle fa-fw"></i> <tiles:insertAttribute name="header"/>
      </div>
      		<tiles:insertAttribute name="customTitle" />
			<tiles:insertAttribute name="navigation" />
		</nav>
		<div id="page-wrapper" style="overflow-y: scroll">
			<div class="row">
				<div class="col-lg-12">
					<tiles:insertAttribute name="content" />
				</div>
			</div>
		</div>
	</div>
	<tiles:insertAttribute name="footer" />
</body>

</html>
