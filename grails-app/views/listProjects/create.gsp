<%--
  Created by IntelliJ IDEA.
  User: 46933
  Date: 04-08-2022
  Time: 15:39
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<div class="card" style="margin: 5px">
    <div class="card-header">
        <g:message code="Create" args="[Create]"></g:message>
    </div>
<div class="col-lg-12 d-flex justify-content-center  p-lg-5">
    <div class="col-md-8" style="margin-top: 50px">
    <g:form  controls="listProjects" action="save" style="align-content: center">
        <g:render template="form"></g:render>
        <button type="submit" class="btn btn-primary">Submit</button>
    </g:form>
    </div>

</div>
</div>

</body>
</html>