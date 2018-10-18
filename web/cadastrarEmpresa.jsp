<%-- 
    Document   : cadastrarEmpresa
    Created on : 17/10/2018, 22:03:39
    Author     : bruno
--%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Empresa"%>
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
                    <h1 class="display-3">Cadastro de Empresa</h1>           
                </div>
            </div>
            <div class="row">
                <div class="col-6 my-3">
                    <h2>Preencha o Formulário</h2>
                    <%  
                        if(request.getParameter("cadastrar") != null){
                            String nome = request.getParameter("nome");
                            String razao = request.getParameter("razao");
                            String cnpj = request.getParameter("cnpj");
                            String tel = request.getParameter("tel");
                            String web = request.getParameter("web");

                            Empresa e = new Empresa();
                            e.setDados(nome, razao, cnpj, tel, web);
                            Db.getEmpresas().add(e);
                            response.sendRedirect("listaEmpresa.jsp");
                        }
                    %>
                    <form method="get" class="my-3">
                        <div class="form-group">
                            <label>Nome: </label>
                            <input type="text" class="form-control" name="nome" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Razão: </label>
                            <input type="text" class="form-control" name="razao" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Cnpj: </label>
                            <input type="text" class="form-control" name="cnpj" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Telefone: </label>
                            <input type="text" class="form-control" name="tel" required>
                        </div>
                        <div class="form-group">
                            <label>Website: </label>
                            <input type="text" class="form-control" name="web" required>
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
