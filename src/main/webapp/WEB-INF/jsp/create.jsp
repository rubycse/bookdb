<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link href='<c:url value="/images/favicon.ico"/>' rel="icon" type="image/x-icon">

    <link href='<c:url value="/bootstrap/3.3.6/yeti/bootstrap.min.css"/>' rel="stylesheet" type="text/css">
    <script src="<c:url value="/js/jquery-1.11.3.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/bootstrap/3.3.6/js/bootstrap.min.js"/>" type="text/javascript"></script>

    <link href='<c:url value="/css/book.css"/>' rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="_navbar.jsp"/>
<div id="pageContent" class="container">
    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-sm-12">
                <h1>Create Book</h1>
            </div>
        </div>
    </div>

    <form:form class="form-horizontal" method="post" action="save" enctype="multipart/form-data" commandName="book">

        <form:errors path="*">
            <div class="alert alert-danger">
                <strong>Title or Author can not be empty</strong>
            </div>
        </form:errors>

        <fieldset>
            <div class="form-group">
                <label for="title" class="col-lg-2 control-label">Title</label>
                <div class="col-lg-10">
                    <form:input type="text" class="form-control" id="title" name="title" path="title"/>
                </div>
            </div>
            <div class="form-group">
                <label for="author" class="col-lg-2 control-label">Author</label>
                <div class="col-lg-10">
                    <form:input type="text" class="form-control" id="author" name="author" path="author"/>
                </div>
            </div>
            <div class="form-group">
                <label for="description" class="col-lg-2 control-label">Description</label>
                <div class="col-lg-10">
                    <form:textarea class="form-control" rows="3" id="description" name="description" path="description"/>
                </div>
            </div>
            <div class="form-group">
                <label for="bookPdf" class="col-lg-2 control-label">Upload Book</label>
                <div class="col-lg-10">
                    <input id="bookPdf" type="file" name="bookPdf" accept=".pdf"/>
                    <br />
                    <span id="bookPdfMessage"></span>
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </div>
        </fieldset>
    </form:form>
</div>
</body>
</html>
