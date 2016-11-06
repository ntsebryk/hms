<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title><tiles:insertAttribute name="title" ignore="true"/></title>
  <link href="<c:url value = "/resources/libs/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value = "/resources/libs/css/sb-admin-2.css"/>" rel="stylesheet">
  <link href="<c:url value = "/resources/custom/css/welcome-page.css"/>" rel="stylesheet">
  <link href="<c:url value = "/resources/libs/fonts/font-awesome-4.2.0/css/font-awesome.css"/>" rel="stylesheet">
</head>

<body ng-app="WelcomeAngular" ng-style="cursorStyle">

<div class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
  <div class="navbar-header navbar-brand">
    <i class="fa fa-plus-circle fa-fw"></i> <tiles:insertAttribute name="header"/>
  </div>
  <tiles:insertAttribute name="navigation"/>
</div>
<tiles:insertAttribute name="content"/>
<tiles:insertAttribute name="footer"/>

<script type="text/javascript">
  var _contextPath = "${pageContext.request.contextPath}";
</script>
<script src="<c:url value="/resources/libs/js/angular.min.js"/>"></script>
<script src="<c:url value="/resources/libs/js/ui-bootstrap-tpls-0.11.2.min.js"/>"></script>
<script src="<c:url value="/resources/custom/js/welcome.js"/>"></script>
</body>

</html>