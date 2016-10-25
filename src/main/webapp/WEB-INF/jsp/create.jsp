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
                <h1>Create Book</h1>
            </div>
        </div>
    </div>

    <form class="form-horizontal" method="post" action="save" enctype="multipart/form-data">
        <fieldset>
            <div class="form-group">
                <label for="title" class="col-lg-2 control-label">Title</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="title" name="title">
                </div>
            </div>
            <div class="form-group">
                <label for="author" class="col-lg-2 control-label">Author</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="author" name="author">
                </div>
            </div>
            <div class="form-group">
                <label for="description" class="col-lg-2 control-label">Description</label>
                <div class="col-lg-10">
                    <textarea class="form-control" rows="3" id="description" name="description"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>
