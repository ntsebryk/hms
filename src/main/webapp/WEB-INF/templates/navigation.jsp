<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
<ul class="nav navbar-top-links navbar-right">
  <li><a href="<c:url value="/logout" />"><i class="fa fa-sign-out fa-fw"></i><spring:message code="label.logout"/></a></li>
</ul>
<div class="navbar-default sidebar" role="navigation">
  <div class="sidebar-nav navbar-collapse">
    <ul class="nav" id="side-menu">
      <sec:authorize access="hasRole('ROLE_PATIENT')">
        <li><a href='<c:url value="/patient"/>'><i class="fa fa-h-square fa-fw"></i><spring:message code="label.homepage"/></a></li>
      </sec:authorize>

      <sec:authorize access="hasRole('ROLE_PHARMACIST')">
        <li><a href='<c:url value="/pharmacist"/>'><i class="fa fa-ambulance fa-fw"></i><spring:message code="label.pharmacist"/></a></li>
      </sec:authorize>

      <sec:authorize access="hasRole('ROLE_MANAGER')">
        <li><a href='<c:url value="/admin-manager"/>'><i class="fa fa-hospital-o fa-fw"></i><spring:message code="label.manager"/></a></li>
      </sec:authorize>

      <sec:authorize access="hasRole('ROLE_DOCTOR')">
        <li><a href='<c:url value="/docRecord"/>'><i class="fa fa-user-md fa-fw"></i><spring:message code="label.doctor"/></a></li>
        <li><a href='<c:url value="/tests"/>'><i class="fa fa-tint fa-fw"></i><spring:message code="label.tests"/></a></li>
      </sec:authorize>

      <sec:authorize access="hasAnyRole('ROLE_PATIENT', 'ROLE_LABMANAGER')">
        <li><a href='<c:url value="/laboratory"/>'><i class="fa fa-tint fa-fw"></i><spring:message code="label.laboratory"/></a></li>
      </sec:authorize>

      <sec:authorize access="hasAnyRole('ROLE_PHARMACIST', 'ROLE_DOCTOR', 'ROLE_MANAGER')">
        <li><a href='<c:url value="/drugs"/>'><i class="fa fa-medkit fa-fw"></i><spring:message code="label.drugs"/></a></li>
      </sec:authorize>

      <sec:authorize access="hasAnyRole('ROLE_MANAGER', 'ROLE_DOCTOR')">
        <li><a href='<c:url value="/Diseases"/>'><i class="fa fa-medkit fa-fw"></i><spring:message code="label.diseases"/></a></li>
        <li><a href='<c:url value="/symptoms"/>'><i class="fa fa-stethoscope fa-fw"></i><spring:message code="label.symptoms"/></a></li>
      </sec:authorize>
    </ul>
  </div>
</div>
</sec:authorize>
