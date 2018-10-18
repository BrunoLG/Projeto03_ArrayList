<%-- 
    Document   : alterarEmpresa
    Created on : 17/10/2018, 22:10:45
    Author     : bruno
--%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresa - Alterar</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        Empresa e = Db.getEmpresas().get(i); 
    %>
    <body class="bg-light">
        <% if(request.getParameter("alterar") != null){
                String nome = request.getParameter("nome");
                String razao = request.getParameter("razao");
                String cnpj = request.getParameter("cnpj");
                String tel = request.getParameter("tel");
                String web = request.getParameter("web");
                                         
                
                e.setDados(nome, razao, cnpj, tel, web);
                Db.getEmpresas().set(i, e);
                response.sendRedirect("listaEmpresa.jsp");
        } %>
        <div class="container">
            <div class="row">
                <div class="col-12 text-center my-5">
                    <h1 class="display-3">Alterar cadastro de Empresa</h1>           
                </div>
            </div>
            <div class="row">
                <div class="col-6 my-3">
                    <h2>Preencha o Formulário</h2>
                    <form method="get" class="my-3">
                        <div class="form-group">
                            <label>Indice: </label>
                            <input type="text" class="form-control" name="i" value="<%= i %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Nome: </label>
                            <input type="text" class="form-control" name="nome" value="<%= e.getNome() %>" required>
                        </div>
                        <div class="form-group">
                            <label>Razão Social: </label>
                            <input type="text" class="form-control" name="razao" value="<%= e.getRazao() %>" required>
                        </div>
                        <div class="form-group">
                            <label>CNPJ: </label>
                            <input type="text" class="form-control" name="cnpj" value="<%= e.getCnpj() %>" required>
                        </div>
                        <div class="form-group">
                            <label>Telefone: </label>
                            <input type="text" class="form-control" name="tel" value="<%= e.getTel() %>" required>
                        </div>
                        <div class="form-group">
                            <label>Website: </label>
                            <input type="text" class="form-control" name="web" value="<%= e.getWeb() %>" required>
                        </div>
                        <center> 
                            <input class="btn btn-primary mb-4" type="submit" value="Alterar" name="alterar"/>
                            <a class="btn btn-secondary mb-4" href="listaEmpresa.jsp" role="button">Voltar</a>
                        </center>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
