<%-- 
    Document   : listaEmpresa
    Created on : 17/10/2018, 21:37:38
    Author     : bruno
--%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Empresa</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
        
    </head>
    <body>
        <body class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center my-5">
                    <h1 class="display-3">Lista de Empresas</h1>           
                </div>
            </div>
            <div class="row">
                <div class="col-12 my-3">
                    <table class="table table-hover">
                        <a href="cadastrarEmpresa.jsp"><button>Cadastrar nova empresa</button></a>        
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Razão Social</th>
                                <th>Cnpj</th>
                                <th>Telefone</th>
                                <th>Website</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(Empresa c: Db.getEmpresas()){ %>
                            <tr>
                                    <td><%= c.getNome() %></td>
                                    <td><%= c.getRazao() %></td>
                                    <td><%= c.getCnpj() %></td>
                                    <td><%= c.getTel() %></td>
                                    <td><%= c.getWeb() %></td>
                                    <% int i = Db.getEmpresas().indexOf(c); %>
                                    <td>
                                        <a class="btn btn-secondary" href="alterarEmpresa.jsp?i=<%= i %>" role="button">Alterar</a>
                                        <a class="btn btn-secondary" href="removerEmpresa.jsp?i=<%= i %>" role="button">Remover</a>
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
