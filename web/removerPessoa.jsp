<%-- 
    Document   : removerPessoa
    Created on : 17/10/2018, 22:13:45
    Author     : bruno
--%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nome da Página - Remover</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        Pessoa p = Db.getPessoas().get(i); 
    %>
    <body class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center my-5">
                    <h1 class="display-3">Remover cadastro de Pessoa</h1>           
                </div>
            </div>
            <% if(request.getParameter("remover") != null){
                Db.getPessoas().remove(i);
                response.sendRedirect("listaPessoa.jsp");
            } %>
            <div class="row">
                <div class="col-6 my-3">
                    <h2>Dados da Pessoa</h2>
                    <form method="get" class="my-3">
                        <div class="form-group">
                            <label>Indice: </label>
                            <input type="text" class="form-control" name="i" value="<%= i %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Nome: </label>
                            <input type="text" class="form-control" value="<%= p.getNome() %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>CPF: </label>
                            <input type="text" class="form-control" value="<%= p.getCpf() %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>E-mail: </label>
                            <input type="text" class="form-control" value="<%= p.getEmail() %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Telefone: </label>
                            <input type="text" class="form-control" value="<%= p.getTelefone() %>" readonly>
                        </div>
                        <center> 
                            <input class="btn btn-primary mb-4" type="submit" value="Remover" name="remover"/>
                            <a class="btn btn-secondary mb-4" href="listaPessoa.jsp" role="button">Voltar</a>
                        </center>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
