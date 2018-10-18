<%-- 
    Document   : cadastrarVeiculo
    Created on : 17/10/2018, 22:03:27
    Author     : bruno
--%>

<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nome da Página - Cadastrar</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center my-5">
                    <h1 class="display-3">Cadastro de Veiculo</h1>           
                </div>
            </div>
            <div class="row">
                <div class="col-6 my-3">
                    <h2>Preencha o Formulário</h2>
                    <%
                        if(request.getParameter("cadastrar") != null){
                            String placa = request.getParameter("placa");
                            String marca = request.getParameter("marca");
                            String modelo = request.getParameter("modelo");
                            String cor = request.getParameter("cor");

                            Veiculo v = new Veiculo();
                            v.setDados(placa, marca, modelo, cor);
                            Db.getVeiculos().add(v);
                            response.sendRedirect("listaVeiculo.jsp");
                        }
                    %>
                    <form method="get" class="my-3">
                        <div class="form-group">
                            <label>Placa: </label>
                            <input type="text" class="form-control" name="placa" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Marca: </label>
                            <input type="text" class="form-control" name="marca" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Modelo: </label>
                            <input type="text" class="form-control" name="modelo" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Cor: </label>
                            <input type="text" class="form-control" name="cor" required>
                        </div>
                        <center> 
                            <input class="btn btn-primary mb-4" type="submit" value="Cadastrar" name="cadastrar"/>
                            <a class="btn btn-secondary mb-4" href="index.jsp" role="button">Voltar</a>
                        </center>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
