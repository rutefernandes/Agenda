<%-- 
    Document   : listarcontatos
    Created on : 08/03/2018, 13:31:59
    Author     : rute
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="models.Contato"%>
<%@page import="models.Agenda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar</title>
    </head>
    <body>
        <%  //System.out.println(request.getAttribute("contatos"));
            Agenda agenda = (Agenda)request.getAttribute("contatos");
            
        %>
        <div id="main" class="container-fluid">
            <h2 class="page-header">Agenda Web</h2>
            <table border="1" width="80%">
                <div class='right-button-margin'>
                    <a href='cadastrar.jsp' class='btn btn-default pull-right'>Add</a>
                </div>
                <tr><th>Nome</th><th>Telefone</th><th>Email</th><th>Update</th><th>Delete</th><th>Read</th></tr>
                <%  
                    if(agenda!=null && agenda.contato!=null){
                        int i = -1;
                        for(Contato contato: agenda.contato){
                            i++;
                %>
                   <tr>
                       <td><%=contato.getNome()%></td>
                       <td><%=contato.getTelefone()%></td>
                       <td><%=contato.getEmail()%></td>
                       <td><a href="ServletContato?action=update&id=<%=i%>">Update</a></td>
                       <td><a href="ServletContato?action=delete&id=<%=i%>">Delete</a></td>
                       <td><a href="ServletContato?action=read&id=<%=i%>">Read</a></td>
                   </tr>
                <%      }
                    } %>
            </table>
        </div>
    </body>
</html>
