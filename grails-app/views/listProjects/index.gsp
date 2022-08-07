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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


<body>
<div class="card" style="margin: 50px" >
    <div class="card-header">
        <h4>Project List</h4>
    </div>
    <div class="col-lg-12 d-flex justify-content-center" style="padding: 20px">
        <table border="1" class="table table-bordered">
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Due date</th>
                <th scope="col">Description</th>
                <th scope="col">Action</th>
            </tr>
            <g:each in="${allprojects}" status="i" var="thisProject">
                <tr>
                    <td>${thisProject.name}</td>
                    <td>${thisProject.dueDate}</td>
                    <td>${thisProject.description}</td>
                    <td>
                        <g:link controller="listProjects" action="edit" id="${thisProject.id}"><i class="fas fa-edit"></i></g:link>
                        <g:link controller="listProjects" action="delete" id="${thisProject.id}"><i class="fas fa-trash" style="color: red"></i></g:link>
                    </td>

                </tr>
            </g:each>
        </table>
    </div>
</div>

</body>
</html>