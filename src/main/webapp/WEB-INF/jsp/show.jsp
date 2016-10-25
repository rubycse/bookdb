<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link href='<c:url value="/images/favicon.ico"/>' rel="icon" type="image/x-icon">

    <link href='<c:url value="/bootstrap/3.3.6/standstone/bootstrap.min.css"/>' rel="stylesheet" type="text/css">
    <script src="<c:url value="/js/jquery-1.11.3.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/bootstrap/3.3.6/js/bootstrap.min.js"/>" type="text/javascript"></script>
</head>
<body>
<jsp:include page="_navbar.jsp"/>
<div id="pageContent" class="container">
    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-sm-12">
                <h1><c:out value="${book.title}"/></h1>
                <div style="font-size: large">by <span class="text-info"><c:out value="${book.author}"/></span></div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="well bs-component">
                <c:out value="${book.description}"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>
