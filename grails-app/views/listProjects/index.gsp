<%--
  Created by IntelliJ IDEA.
  User: 46933
  Date: 04-08-2022
  Time: 10:06
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>


<body>
<g:if test="${flash.message}">
    <div class="alert alert-success" role="alert">
        ${flash.message}
    </div>
</g:if>
<div class="card" style="margin: 5px" >
    <div class="card-header container-fluid">
        <div class="row">
            <div class="col-md-8">
                <h3 >Project List</h3>
            </div>
            <div class="col-md-2 float-right">

                <select name="allProjects" class="form-control" id="name" required onchange="this.form.submit();">
                    <option value="">Select</option>
                    <g:each in="${allprojects}" var="project">
                        <option value="${project.id}">${project.name}</option>
                    </g:each>
                </select>
            </div>
            <div class="col-md-2 float-right">
                <g:link class="btn btn-primary" controller="listProjects" action="create">Create</g:link>
            </div>
        </div>
    </div>
    <div class="col-lg-12 d-flex justify-content-center p-lg-3" >
        <table border="1" class="table table-bordered">
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Due date</th>
                <th scope="col">Description</th>
                <th scope="col" style="width:5%">Action</th>
            </tr>
            <g:each in="${allprojects}" status="i" var="thisProject">
                <tr>
                    <td>${thisProject.name}</td>
                    <td>${thisProject.dueDate}</td>
                    <td>${thisProject.description}</td>
                    <td class=" d-flex justify-content-center ">
                        <g:link controller="listProjects" action="show" id="${thisProject.id}"><i class="fas fa-eye" style="padding-left: 4px;padding-right: 4px"></i></g:link>
                        <g:link controller="listProjects" action="edit" id="${thisProject.id}"><i class="fas fa-edit " style="padding-left: 4px;padding-right: 4px"></i></g:link>
                        <g:link controller="listProjects" action="delete" id="${thisProject.id}"><i class="fas fa-trash " style="color: red; padding-left: 4px;padding-right: 4px"></i></g:link>
                    </td>

                </tr>
            </g:each>
        </table>
    </div>
</div>

<script type="application/javascript">
    $(document).ready(function() {
       /* var projectName = "${allprojects.name}";
       var s= $("#projectName").val(projectName);

        $('#projectName').submit(function(){
            //here I want to run the method in my controller and update the value of myData
            alert('change');
        });*/

    });



</script>

</body>
</html>