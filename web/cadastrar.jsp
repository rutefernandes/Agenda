<%-- 
    Document   : index
    Created on : 07/03/2018, 19:59:53
    Author     : rute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Agenda</title>

         <!--<link href="css/bootstrap.min.css" rel="stylesheet">
       <link href="css/style.css" rel="stylesheet"> -->
    </head>
    <body>
        <div id="main" class="container-fluid">
            <h2 class="page-header">Agenda Web</h3>
            <h3 class="page-header">Adicionar Contato</h3>
            <form method="POST" action='ServletContato'>
                <table>
                    <tr><td><label for="form_name">Name</label></td><td><input id="form_name"type="text" name="name" placeholder="Informe seu nome" required="required"/></td></tr>
                    <tr><td><label for="form_tel">Telefone</label></td><td><input id="form_tel"type="tel" name="tel" maxlength="11" required="required"/></td></tr>
                    <tr><td><label for="form_email">Email</label></td><td><input id="form_email"type="email" name="email" required="required"/></td></tr>
                    <tr><td><label for="form_state">Estado</label></td><td><input id="form_state"type="text" name="state" required="required"/></td></tr>
                    <tr><td><label for="form_city">Cidade</label></td><td><input id="form_city"type="text" name="city" required="required"/></td></tr>
                    <tr><td><label for="form_neig">Bairro</label></td><td><input id="form_neig"type="text" name="neig"required="required"/></td></tr>
                    <tr><td><label for="form_street">Rua</label></td><td><input id="form_street"type="text" name="street" required="required"/></td></tr>
                    <tr><td><label for="form_number">Numero</label></td><td><input id="form_number"type="number" name="number" required="required"/></td></tr>
                    </td></tr>
                    <tr><td colspan="2"><input type="submit" value="Adicionar contato"/></td></tr>
                </table>
            </form>
        </div>
        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
