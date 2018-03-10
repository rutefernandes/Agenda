<%-- 
    Document   : listarcontatos
    Created on : 08/03/2018, 13:31:59
    Author     : rute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar</title>
    </head>
    <body>
        <div id="main" class="container-fluid">
            <h2 class="page-header">Agenda Web</h2>
            <table border="1" width="80%">
                <div class='right-button-margin'>
                    <a href='cadastrar.jsp' class='btn btn-default pull-right'>Add</a>
                </div>
                <tr><th>Nome</th><th>Telefone</th><th>Email</th><th>Update</th><th>Delete</th><th>Read</th></tr>
                <%  ArrayList<Contato> contato = 
                
                %>
                   <tr><td>${u.getNome()}</td><td>${u.getTelefone()}</td><td>${u.getEmail()}</td><td><a href="cadastrar.jsp?id=${u.getEmail()}">Update</a></td><td><a href="ServletContato?id=${u.getEmail()}">Delete</a></td><td><a href="mostrar.jsp?id=${u.getEmail()}">Read</a></td></tr>
                
            </table>
        </div>
    </body>
</html>
