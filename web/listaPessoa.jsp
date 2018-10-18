<%-- 
    Document   : listaPessoa
    Created on : 17/10/2018, 21:37:25
    Author     : bruno
--%>

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
                        <thead>
                            <tr>
                                <th>#</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <a class="btn btn-secondary" href="alterarPessoa.jsp?i=" role="button">Alterar</a>
                                    <a class="btn btn-secondary" href="removerPessoa.jsp?i=" role="button">Remover</a>
                                </td>
                            </tr>
                        </tbody>
                        </table>
                </div>
            </div>
        </div>
    </body>
</html>
