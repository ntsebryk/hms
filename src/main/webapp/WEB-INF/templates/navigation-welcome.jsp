<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<ul class="nav navbar-top-links navbar-right" ng-controller="NavigationController">

<sec:authorize access="isAnonymous()">
  <li><a href=# ng-click="openLogin()"><i class="fa fa-user fa-fw"></i><spring:message code="label.login"/></a></li>
  <li><a href=# ng-click="openRegistration()"><i class="fa fa-user fa-fw"></i><spring:message code="label.register"/></a></li>
</sec:authorize>

<sec:authorize access="isAuthenticated()">
  <li><i class="fa fa-gear fa-fw"></i> Hello, <sec:authentication property="principal.username"/> :)</li>
  <li><a href="<c:url value="/logout" />"><i class="fa fa-sign-out fa-fw"></i><spring:message code="label.logout"/></a></li>
</sec:authorize>
</ul>
