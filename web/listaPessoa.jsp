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
                    <h1 class="display-3">Lista de pessoas</h1>           
                </div>
            </div>
            <div class="row">
                <div class="col-12 my-3">
                    <table class="table table-hover">
                        <a href="cadastrarPessoa.jsp"><button>Cadastrar nova pessoa</button></a>        
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Cpf</th>
                                <th>Email</th>
                                <th>Telefone</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(Pessoa c: Db.getPessoas()){ %>
                            <tr>
                                    <td><%= c.getNome() %></td>
                                    <td><%= c.getCpf() %></td>
                                    <td><%= c.getEmail() %></td>
                                    <td><%= c.getTelefone() %></td>
                                    <% int i = Db.getPessoas().indexOf(c); %>
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
        </div>
    </body>
</html>