<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>
<header>
    <nav class="navbar navbar-light bg-dark justify-content-between">
        <a class="navbar-brand" style="color: white">Navbar</a>
        <g:form class="form-inline" controller="listProjects" action="index">
            <g:textField name="name" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"/>
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </g:form>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                <ul class="list-group">
                    <li class="list-group-item"><a href="#">DashBoard</a></li>
                    <li class="list-group-item"><a href="#">Contact</a></li>
                    <li class="list-group-item"><a href="#">About</a></li>
                </ul>
            </nav>
            <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
                <g:layoutBody/>
            </main>
        </div>
    </div>
</header>


<asset:javascript src="application.js"/>
</body>
</html>
