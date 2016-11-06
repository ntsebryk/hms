<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<link href="<c:url value = "/resources/libs/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value = "/resources/libs/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<body>
  <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
  </nav>
  <div class="container" style="padding-bottom: 50px; padding-top: 75px">
    <tiles:insertAttribute name="content" />
  </div>
  <tiles:insertAttribute name="footer" />

  <script src="<c:url value="/resources/libs/js/jquery-2.1.1.min.js"/>"></script>
  <script src="<c:url value="/resources/libs/js/bootstrap.min.js"/>"></script>
</body>

</html>