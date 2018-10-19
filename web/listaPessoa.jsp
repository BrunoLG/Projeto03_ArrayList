<%-- 
    Document   : listaPessoa
    Created on : 17/10/2018, 21:37:25
    Author     : bruno
--%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Pessoa</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <body class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center my-5">
                    <h1 class="display-3">Lista de Pessoas</h1>           
                </div>
            </div>
            <div class="row">
                <div class="col-12 my-3">
                    <table class="table table-hover">      
                        <thead class="legenda">
                            <tr>
                                <th>#</th>
                                <th>Nome</th>
                                <th>CPF</th>
                                <th>E-mail</th>
                                <th>Telefone</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(Pessoa p: Db.getPessoas()){ %>
                            <tr>
                                    <% int i = Db.getPessoas().indexOf(p); %>
                                    <td><%= i %></td>
                                    <td><%= p.getNome() %></td>
                                    <td><%= p.getCpf() %></td>
                                    <td><%= p.getEmail() %></td>
                                    <td><%= p.getTelefone() %></td>
                                    <td>
                                        <a class="btn btn-secondary" href="alterarPessoa.jsp?i=<%= i %>" role="button">Alterar</a>
                                        <a class="btn btn-secondary" href="removerPessoa.jsp?i=<%= i %>" role="button">Remover</a>
                                    </td>
                            </tr>
                            <%}%>
                        </tbody>                        
                        </table>
                </div>
            </div>
            <center> 
                <a class="btn btn-primary mb-4" href="cadastrarPessoa.jsp" role="button">Cadastrar</a>
                <a class="btn btn-secondary mb-4" href="index.jsp" role="button">Voltar</a>
            </center>            
        </div>
    </body>
</html>