<%-- 
    Document   : removerVeiculo
    Created on : 17/10/2018, 22:13:56
    Author     : bruno
--%>

<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nome da Página - Remover</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        Veiculo v = Db.getVeiculos().get(i); 
    %>
    <body class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center my-5">
                    <h1 class="display-3">Remover cadastro de Veículo</h1>           
                </div>
            </div>
            <% if(request.getParameter("remover") != null){
                Db.getVeiculos().remove(i);
                response.sendRedirect("listaVeiculo.jsp");
            } %>
            <div class="row">
                <div class="col-6 my-3">
                    <h2>Dados do Veiculo</h2>
                    <form method="get" class="my-3">
                        <div class="form-group">
                            <label>Indice: </label>
                            <input type="text" class="form-control" name="i" value="<%= i %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Placa: </label>
                            <input type="text" class="form-control" value="<%= v.getPlaca() %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Marca: </label>
                            <input type="text" class="form-control" value="<%= v.getMarca() %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Modelo: </label>
                            <input type="text" class="form-control" value="<%= v.getModelo() %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Cor: </label>
                            <input type="text" class="form-control" value="<%= v.getCor() %>" readonly>
                        </div>
                        <center> 
                            <input class="btn btn-primary mb-4" type="submit" value="Remover" name="remover"/>
                            <a class="btn btn-secondary mb-4" href="listaVeiculo.jsp" role="button">Voltar</a>
                        </center>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
