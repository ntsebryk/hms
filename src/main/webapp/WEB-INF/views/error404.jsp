<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="panel panel-red">
    <div class="panel-heading">
        <strong>You get lost.</strong>
    </div>
    <div class="panel-body">
        <span class="pull-left">
            <img class="img-circle" src='<c:url value="/resources/custom/images/error404.jpg"/>'>
        </span>
        <p><strong>Error 404: </strong>Page not found! <a href='<%=request.getContextPath()%>/'>Home</a></p>
    </div>
</div>