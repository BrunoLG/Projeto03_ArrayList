<%-- 
    Document   : removerEmpresa
    Created on : 17/10/2018, 22:13:37
    Author     : bruno
--%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresa - Remover</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        Empresa c = Db.getEmpresas().get(i); 
    %>
    <body class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center my-5">
                    <h1 class="display-3">Remover cadastro de Empresa</h1>           
                </div>
            </div>
            <% if(request.getParameter("remover") != null){
                Db.getEmpresas().remove(i);
                response.sendRedirect("listaEmpresa.jsp");
            } %>
            <div class="row">
                <div class="col-6 my-3">
                    <h2>Dados do </h2>
                    <form method="get" class="my-3">
                        <div class="form-group">
                            Nome: <%= c.getNome() %> </br></br>
                             <input type="hidden" name="i" value="<%= i %>">
                        </div>
                        <center> 
                            <input class="btn btn-primary mb-4" type="submit" value="Remover" name="remover"/>
                            <a class="btn btn-secondary mb-4" href="listaEmpresa.jsp" role="button">Voltar</a>
                        </center>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
