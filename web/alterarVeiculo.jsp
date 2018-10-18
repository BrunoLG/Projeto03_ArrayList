<%-- 
    Document   : alterarVeiculo
    Created on : 17/10/2018, 22:10:54
    Author     : bruno
--%>

<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Veiculo - Alterar</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        Veiculo v = Db.getVeiculos().get(i); 
    %>
    <body class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center my-5">
                    <h1 class="display-3">Alterar cadastro de Veiculo</h1>           
                </div>
            </div>
            <%
                if(request.getParameter("alterar") != null){
                    String placa = request.getParameter("placa");
                    String marca = request.getParameter("marca");
                    String modelo = request.getParameter("modelo");
                    String cor = request.getParameter("cor");

                    v.setDados(placa, marca, modelo, cor);
                    Db.getVeiculos().set(i, v);
                    response.sendRedirect("listaVeiculo.jsp");
                }
            %>
            <div class="row">
                <div class="col-6 my-3">
                    <h2>Preencha o Formulário</h2>
                    <form method="get" class="my-3">
                        <div class="form-group">
                            <label>Indice: </label>
                            <input type="text" class="form-control" name="i" value="<%= i %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Placa: </label>
                            <input type="text" class="form-control" name="placa" value="<%= v.getPlaca() %>" required>
                        </div>
                        <div class="form-group">
                            <label>Marca: </label>
                            <input type="text" class="form-control" name="marca" value="<%= v.getMarca() %>" required>
                        </div>
                        <div class="form-group">
                            <label>Modelo: </label>
                            <input type="text" class="form-control" name="modelo" value="<%= v.getModelo() %>" required>
                        </div>
                        <div class="form-group">
                            <label>Cor: </label>
                            <input type="text" class="form-control" name="cor" value="<%= v.getCor() %>" required>
                        </div>
                        <center> 
                            <input class="btn btn-primary mb-4" type="submit" value="Alterar" name="alterar"/>
                            <a class="btn btn-secondary mb-4" href="listaVeiculo.jsp" role="button">Voltar</a>
                        </center>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
