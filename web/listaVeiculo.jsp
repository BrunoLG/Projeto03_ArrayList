<%-- 
    Document   : listaVeiculo
    Created on : 17/10/2018, 21:37:49
    Author     : bruno
--%>

<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Veículo</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <body class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center my-5">
                    <h1 class="display-3">Lista de Veículos</h1>           
                </div>
            </div>
            <div class="row">
                <div class="col-12 my-3">
                    <table class="table table-hover">
                        <thead class="legenda">
                            <tr>
                                <th>#</th>
                                <th>Placa</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Cor</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(Veiculo v: Db.getVeiculos()){ %>                              
                            <tr>
                                <% int i = Db.getVeiculos().indexOf(v); %>
                                <td><%= i %></td>
                                <td><%= v.getPlaca()%></td>
                                <td><%= v.getMarca()%></td>
                                <td><%= v.getModelo()%></td>
                                <td><%= v.getCor()%></td>   
                                <td>
                                    <a class="btn btn-secondary" href="alterarVeiculo.jsp?i=<%= i %>" role="button">Alterar</a>
                                    <a class="btn btn-secondary" href="removerVeiculo.jsp?i=<%= i %>" role="button">Remover</a>
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
