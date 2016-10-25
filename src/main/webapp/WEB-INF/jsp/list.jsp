<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <link href='<c:url value="/images/favicon.ico"/>' rel="icon" type="image/x-icon">

    <link href='<c:url value="/bootstrap/3.3.6/standstone/bootstrap.min.css"/>' rel="stylesheet" type="text/css">
    <script src="<c:url value="/js/jquery-1.11.3.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/bootstrap/3.3.6/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <title>Books</title>
</head>
<body>
<jsp:include page="_navbar.jsp"/>
<div id="pageContent" class="container">
    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-sm-12">
                <h1>Books</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="bs-component">
                <table class="table table-striped table-hover ">
                    <thead>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${books}" var="book">
                        <tr>
                            <td><a href="<c:url value="/show/${book.id}"/>"><c:out value="${book.title}"/></a></td>
                            <td><c:out value="${book.author}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
