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
                        <thead class="legenda">
                            <tr>
                                <th>#</th>
                                <th>Nome</th>
                                <th>Razão Social</th>
                                <th>CNPJ</th>
                                <th>Telefone</th>
                                <th>Website</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(Empresa e: Db.getEmpresas()){ %>
                            <tr>
                                    <% int i = Db.getEmpresas().indexOf(e); %>
                                    <td><%= i %></td>
                                    <td><%= e.getNome() %></td>
                                    <td><%= e.getRazao() %></td>
                                    <td><%= e.getCnpj() %></td>
                                    <td><%= e.getTel() %></td>
                                    <td><%= e.getWeb() %></td>
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
            <center> 
                <a class="btn btn-primary mb-4" href="cadastrarEmpresa.jsp" role="button">Cadastrar</a>
                <a class="btn btn-secondary mb-4" href="index.jsp" role="button">Voltar</a>
            </center>            
        </div>
    </body>
</html>
