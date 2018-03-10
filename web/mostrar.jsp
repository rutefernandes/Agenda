<%-- 
    Document   : mostrar
    Created on : 08/03/2018, 14:16:54
    Author     : rute
--%>

<%@page import="models.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Informações do contato</h2>
        <% Contato contato = (Contato)request.getAttribute("contato");
        if(contato!=null){
        %>
        <ul>
            <li>Nome: <%= contato.getNome() %></li>
            <li>Telefone: <%= contato.getTelefone() %></li>
            <li>Email: <%= contato.getEmail() %></li>
            <li>Estado: <%= contato.getEndereco().getEstado() %></li>
            <li>Cidade: <%= contato.getEndereco().getCidade() %></li>
            <li>Bairro: <%= contato.getEndereco().getBairro() %></li>
            <li>Rua: <%= contato.getEndereco().getRua() %></li>
            <li>Número: <%= contato.getEndereco().getNumero() %></li>
        </ul>
        <% }%>
    </body>
</html>
